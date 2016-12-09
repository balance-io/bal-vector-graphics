//
//  QCMethod.swift
//
//  Version 1.21
//
//  www.quartzcodeapp.com
//

#if os(iOS)
import UIKit
#else
import Cocoa
#endif

open class QCMethod
{
	open class func reverseAnimation(_ anim : CAAnimation, totalDuration : CFTimeInterval) -> CAAnimation{
		var duration :CFTimeInterval = anim.duration + (anim.autoreverses ? anim.duration : 0)
		if anim.repeatCount > 1 {
			duration = duration * CFTimeInterval(anim.repeatCount)
		}
		let endTime = anim.beginTime + duration
		let reverseStartTime = totalDuration - endTime
		
		var newAnim : CAAnimation!
		
		//Reverse timing function closure
		let reverseTimingFunction =
		{
			(theAnim:CAAnimation) -> Void  in
			let timingFunction = theAnim.timingFunction;
			if timingFunction != nil{
				var first : [Float] = [0,0]
				var second : [Float] = [0,0]
				timingFunction?.getControlPoint(at: 1, values: &first)
				timingFunction?.getControlPoint(at: 2, values: &second)
				
				theAnim.timingFunction = CAMediaTimingFunction(controlPoints: 1-second[0], 1-second[1], 1-first[0], 1-first[1])
			}
		}
		
		//Reverse animation values appropriately
		if let basicAnim = anim as? CABasicAnimation{
			if !anim.autoreverses{
				let fromValue: AnyObject! = basicAnim.toValue as AnyObject!
				basicAnim.toValue = basicAnim.fromValue
				basicAnim.fromValue = fromValue
				reverseTimingFunction(basicAnim)
			}
			basicAnim.beginTime = CFTimeInterval(reverseStartTime)
			
			
			if reverseStartTime > 0 {
				let groupAnim = CAAnimationGroup()
				groupAnim.animations = [basicAnim]
				groupAnim.duration = maxDurationFromAnimations(groupAnim.animations! as [CAAnimation])
				for anim in groupAnim.animations!{
					anim.fillMode = kCAFillModeBoth
				}
				newAnim = groupAnim
			}
			else{
				newAnim = basicAnim
			}
			
		}
		else if let keyAnim = anim as? CAKeyframeAnimation{
			if !anim.autoreverses{
				let values = Array(keyAnim.values!.reversed())
				keyAnim.values = values;
				reverseTimingFunction(keyAnim)
			}
			keyAnim.beginTime = CFTimeInterval(reverseStartTime)
			
			if reverseStartTime > 0 {
				let groupAnim = CAAnimationGroup()
				groupAnim.animations = [keyAnim]
				groupAnim.duration = maxDurationFromAnimations(groupAnim.animations! as [CAAnimation])
				for anim in groupAnim.animations!{
					anim.fillMode = kCAFillModeBoth
				}
				newAnim = groupAnim
				}else{
				newAnim = keyAnim
			}
		}
		else if let groupAnim = anim as? CAAnimationGroup{
			var newSubAnims : [CAAnimation] = []
			for subAnim in groupAnim.animations! as [CAAnimation] {
				let newSubAnim = reverseAnimation(subAnim, totalDuration: totalDuration)
				newSubAnims.append(newSubAnim)
			}
			
			groupAnim.animations = newSubAnims
			for anim in groupAnim.animations!{
				anim.fillMode = kCAFillModeBoth
			}
			groupAnim.duration = maxDurationFromAnimations(newSubAnims)
			newAnim = groupAnim
			}else{
			newAnim = anim
		}
		return newAnim
	}
	open class func groupAnimations(_ animations : [CAAnimation], fillMode : String!, forEffectLayer : Bool, sublayersCount : NSInteger) -> CAAnimationGroup{
		let groupAnimation = CAAnimationGroup()
		groupAnimation.animations = animations
		
		if (fillMode != nil){
			if let animations = groupAnimation.animations {
				for anim in animations {
					anim.fillMode = fillMode
				}
			}
			groupAnimation.fillMode = fillMode
			groupAnimation.isRemovedOnCompletion = false
		}
		
		if forEffectLayer{
			groupAnimation.duration = QCMethod.maxDurationOfEffectAnimation(groupAnimation, sublayersCount: sublayersCount)
			}else{
			groupAnimation.duration = QCMethod.maxDurationFromAnimations(animations)
		}
		
		return groupAnimation
	}
	
	open class func groupAnimations(_ animations : [CAAnimation], fillMode : String!) -> CAAnimationGroup{
		return groupAnimations(animations, fillMode: fillMode, forEffectLayer: false, sublayersCount: 0)
	}
	open class func maxDurationFromAnimations(_ anims : [CAAnimation]) -> CFTimeInterval{
		var maxDuration: CGFloat = 0;
		for anim in anims {
			maxDuration = max(CGFloat(anim.beginTime + anim.duration) * CGFloat(anim.repeatCount == 0 ? 1.0 : anim.repeatCount) * (anim.autoreverses ? 2.0 : 1.0), maxDuration);
		}
		
		if maxDuration.isInfinite { return TimeInterval(NSIntegerMax)}
		
		return CFTimeInterval(maxDuration);
	}
	
	open class func maxDurationOfEffectAnimation(_ anim : CAAnimation, sublayersCount : NSInteger) -> CFTimeInterval{
		var maxDuration : CGFloat = 0
		if let groupAnim = anim as? CAAnimationGroup{
			for subAnim in groupAnim.animations! as [CAAnimation]{
				
				var delay : CGFloat = 0
				let instDelay = (subAnim.value(forKey: "instanceDelay") as AnyObject).floatValue;
				if (instDelay != nil) {
					delay = CGFloat(instDelay!) * CGFloat(sublayersCount - 1);
				}
				var repeatCountDuration : CGFloat = 0;
				if subAnim.repeatCount > 1 {
					repeatCountDuration = CGFloat(subAnim.duration) * CGFloat(subAnim.repeatCount-1);
				}
				var duration : CGFloat = 0;
				
				duration = CGFloat(subAnim.beginTime) + (subAnim.autoreverses ? CGFloat(subAnim.duration) : CGFloat(0)) + delay + CGFloat(subAnim.duration) + CGFloat(repeatCountDuration);
				maxDuration = max(duration, maxDuration);
			}
		}
        if maxDuration.isInfinite{
			maxDuration = 1000
		}
		return CFTimeInterval(maxDuration);
	}
	
	open class func updateValueFromAnimationsForLayers(_ layers : [CALayer]){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		for aLayer in layers{
			if let keys = aLayer.animationKeys() as [String]!{
				for animKey in keys{
					let anim = aLayer.animation(forKey: animKey)
					updateValueForAnimation(anim!, theLayer: aLayer);
				}
			}
			
		}
		
		CATransaction.commit()
	}
	
	open class func updateValueForAnimation(_ anim : CAAnimation, theLayer : CALayer){
		if let basicAnim = anim as? CABasicAnimation{
			if (!basicAnim.autoreverses) {
				theLayer.setValue(basicAnim.toValue, forKeyPath: basicAnim.keyPath!)
			}
			}else if let keyAnim = anim as? CAKeyframeAnimation{
			if (!keyAnim.autoreverses) {
				theLayer.setValue(keyAnim.values?.last, forKeyPath: keyAnim.keyPath!)
			}
			}else if let groupAnim = anim as? CAAnimationGroup{
			for subAnim in groupAnim.animations! as [CAAnimation]{
				updateValueForAnimation(subAnim, theLayer: theLayer)
			}
		}
	}
	
	open class func updateValueFromPresentationLayerForAnimation(_ anim : CAAnimation!, theLayer : CALayer){
		if let basicAnim = anim as? CABasicAnimation{
			theLayer.setValue(theLayer.presentation()?.value(forKeyPath: basicAnim.keyPath!), forKeyPath: basicAnim.keyPath!)
			}else if let keyAnim = anim as? CAKeyframeAnimation{
			theLayer.setValue(theLayer.presentation()?.value(forKeyPath: keyAnim.keyPath!), forKeyPath: keyAnim.keyPath!)
			}else if let groupAnim = anim as? CAAnimationGroup{
			for subAnim in groupAnim.animations! as [CAAnimation]{
				updateValueFromPresentationLayerForAnimation(subAnim, theLayer: theLayer)
			}
		}
	}
	
	open class func addSublayersAnimation(_ anim : CAAnimation, key : String, layer : CALayer){
		return addSublayersAnimationNeedReverse(anim, key: key, layer: layer, reverseAnimation: false, totalDuration: 0)
	}
	
	open class func addSublayersAnimationNeedReverse(_ anim : CAAnimation, key : String, layer : CALayer, reverseAnimation : Bool, totalDuration : CFTimeInterval){
		let sublayers = layer.sublayers
		let sublayersCount = sublayers!.count
		
		let setBeginTime =
		{
			(subAnim:CAAnimation, sublayerIdx:NSInteger) -> Void  in
			
			let instDelay = (subAnim.value(forKey: "instanceDelay") as AnyObject).floatValue;
			if (instDelay != nil) {
				let instanceDelay = CGFloat(instDelay!)
				let orderType : NSInteger = ((subAnim.value(forKey: "instanceOrder")!) as AnyObject).intValue
				switch (orderType) {
					case 0: subAnim.beginTime = CFTimeInterval(CGFloat(subAnim.beginTime) + CGFloat(sublayerIdx) * instanceDelay)
					case 1: subAnim.beginTime = CFTimeInterval(CGFloat(subAnim.beginTime) + CGFloat(sublayersCount - sublayerIdx - 1) * instanceDelay)
					case 2:
					let middleIdx     = sublayersCount/2
					let begin         = CGFloat(abs(middleIdx - sublayerIdx)) * instanceDelay
					subAnim.beginTime += CFTimeInterval(begin)
					
					case 3:
					let middleIdx     = sublayersCount/2
					let begin         = CGFloat(middleIdx - abs((middleIdx - sublayerIdx))) * instanceDelay
					subAnim.beginTime     += CFTimeInterval(begin)
					
					default:
					break
				}
			}
		}
		
		for (idx, sublayer) in sublayers!.enumerated() {
			
			if let groupAnim = anim.copy() as? CAAnimationGroup{
				var newSubAnimations : [CAAnimation] = []
				for subAnim in groupAnim.animations!{
					newSubAnimations.append(subAnim.copy() as! CAAnimation)
				}
				groupAnim.animations = newSubAnimations
				let animations = groupAnim.animations
				for sub in animations! as [CAAnimation]{
					setBeginTime(sub, idx)
					//Reverse animation if needed
					if reverseAnimation {
						_ = self.reverseAnimation(sub, totalDuration: totalDuration)
					}
					
				}
				sublayer.add(groupAnim, forKey: key)
			}
			else{
				let copiedAnim = anim.copy() as! CAAnimation
				setBeginTime(copiedAnim, idx)
				sublayer.add(copiedAnim, forKey: key)
			}
			
		}
	}
	
	
#if os(iOS)
	open class func alignToBottomPath(path : UIBezierPath, layer: CALayer) -> UIBezierPath{
		let diff = CGRectGetMaxY(layer.bounds) - CGRectGetMaxY(path.bounds)
		let transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, diff)
		path.applyTransform(transform)
		return path;
	}
	
	open class func offsetPath(path : UIBezierPath, offset : CGPoint) -> UIBezierPath{
		let affineTransform = CGAffineTransformTranslate(CGAffineTransformIdentity, offset.x, offset.y)
		path.applyTransform(affineTransform)
		return path
	}
	
	
#else
	open class func offsetPath(_ path : NSBezierPath, offset : CGPoint) -> NSBezierPath{
		var xfm = AffineTransform.identity
		xfm.translate(x: offset.x, y:offset.y)
		path.transform(using: xfm)
		return path
	}
	
	
#endif
}


#if os(iOS)
#else
extension NSBezierPath {
	
	open var quartzPath: CGPath {
		
		get {
			return self.transformToCGPath()
		}
	}
	
	/// Transforms the NSBezierPath into a CGPathRef
	///
	/// :returns: The transformed NSBezierPath
	fileprivate func transformToCGPath() -> CGPath {
		
		// Create path
		let path = CGMutablePath()
		let points = UnsafeMutablePointer<NSPoint>.allocate(capacity: 3)
		let numElements = self.elementCount
		
		if numElements > 0 {
						
			for index in 0..<numElements {
				
				let pathType = self.element(at: index, associatedPoints: points)
				
				switch pathType {
                case .moveToBezierPathElement:
                    path.move(to: points[0])
                case .lineToBezierPathElement:
                    path.addLine(to: points[0])
                case .curveToBezierPathElement:
                    path.addCurve(to: points[2], control1: points[0], control2: points[1])
                case .closePathBezierPathElement:
                    path.closeSubpath()
				}
			}
		}
		
		points.deallocate(capacity: 3)
		return path
	}
}


extension NSImage{
	
	open func cgImage() -> CGImage{
		let data = self.tiffRepresentation
		var imageRef : CGImage!
		var sourceRef : CGImageSource!
		
		sourceRef = CGImageSourceCreateWithData(data! as CFData, nil)
		if (sourceRef != nil) {
			imageRef = CGImageSourceCreateImageAtIndex(sourceRef, 0, nil)
		}
		return imageRef
	}
}


#endif
