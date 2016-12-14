//
//  AccountsTabIcon.swift
//
//  Code generated using QuartzCode 1.53.0 on 12/11/16.
//  www.quartzcodeapp.com
//

import Cocoa


public class AccountsTabIcon: NSView, TabIcon, CAAnimationDelegate {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = false
	
	public var tabIconColor : NSColor!
	public var tabIconBorderColor : NSColor!
	public var tabIconSelectedColor : NSColor!
	
	//MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupProperties()
		setupLayers()
	}
	
	public required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		setupProperties()
		setupLayers()
	}
	
	
	
	func setupProperties(){
		self.tabIconColor = NSColor(red:0.443, green: 0.49, blue:0.541, alpha:1)
		self.tabIconBorderColor = NSColor.black
		self.tabIconSelectedColor = NSColor(red:0.0745, green: 0.0863, blue:0.098, alpha:1)
	}
	
	func setupLayers(){
		self.wantsLayer = true
		
		self.layer!.backgroundColor = NSColor.black.cgColor
		
		let path = CAShapeLayer()
		path.frame       = CGRect(x: 6, y: 3, width: 14, height: 14)
		path.fillColor   = self.tabIconColor.cgColor
		path.strokeColor = NSColor.black.cgColor
		path.lineWidth   = 0
		path.path        = pathPath().quartzPath
		self.layer?.addSublayer(path)
		layers["path"] = path
		
		let path3 = CAShapeLayer()
		path3.frame       = CGRect(x: 6, y: 3, width: 14, height: 14)
		path3.opacity     = 0.02
		path3.fillColor   = nil
		path3.strokeColor = self.tabIconBorderColor.cgColor
		path3.path        = path3Path().quartzPath
		self.layer?.addSublayer(path3)
		layers["path3"] = path3
		let path2 = CAShapeLayer()
		path2.frame       = CGRect(x: 0, y: 0, width: 14, height: 14)
		path2.fillColor   = NSColor(red:0.201, green: 0.588, blue:0.152, alpha:1).cgColor
		path2.strokeColor = NSColor.black.cgColor
		path2.lineWidth   = 0
		path2.path        = path2Path().quartzPath
		path3.mask = path2
		layers["path2"] = path2
	}
	
	
	
	//MARK: - Animation Setup
	
	public func addHighlightAnimation(reverseAnimation: Bool = false, completionBlock: ((_ finished: Bool) -> Void)? = nil){
		if completionBlock != nil{
			let completionAnim = CABasicAnimation(keyPath:"completionAnim")
			completionAnim.duration = 0.05
			completionAnim.delegate = self
			completionAnim.setValue("highlight", forKey:"animId")
			completionAnim.setValue(false, forKey:"needEndAnim")
			layer!.add(completionAnim, forKey:"highlight")
			if let anim = layer!.animation(forKey: "highlight"){
				completionBlocks[anim] = completionBlock
			}
		}
		
		let fillMode : String = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards
		
		let totalDuration : CFTimeInterval = 0.05
		
		////Path animation
		let pathFillColorAnim            = CAKeyframeAnimation(keyPath:"fillColor")
		pathFillColorAnim.values         = [self.tabIconColor.cgColor, 
			 self.tabIconSelectedColor.cgColor]
		pathFillColorAnim.keyTimes       = [0, 1]
		pathFillColorAnim.duration       = 0.05
		pathFillColorAnim.timingFunction = CAMediaTimingFunction(controlPoints: 0.25, 0.1, 0.25, 1)
		
		var pathHighlightAnim : CAAnimationGroup = QCMethod.group(animations: [pathFillColorAnim], fillMode:fillMode)
		if (reverseAnimation){ pathHighlightAnim = QCMethod.reverseAnimation(anim: pathHighlightAnim, totalDuration:totalDuration) as! CAAnimationGroup}
		layers["path"]?.add(pathHighlightAnim, forKey:"pathHighlightAnim")
	}
	
	//MARK: - Animation Cleanup
	
	public func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValue(forKey: anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
				updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
				removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValues(forAnimationId identifier: String){
		if identifier == "highlight"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["path"] as! CALayer).animation(forKey: "pathHighlightAnim"), theLayer:(layers["path"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "highlight"{
			(layers["path"] as! CALayer).removeAnimation(forKey: "pathHighlightAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func pathPath() -> NSBezierPath{
		let pathPath = NSBezierPath()
		pathPath.move(to: CGPoint(x: 11, y: 14))
		pathPath.line(to: CGPoint(x: 3, y: 14))
		pathPath.curve(to: CGPoint(x: 0, y: 11), controlPoint1:CGPoint(x: 1.3, y: 14), controlPoint2:CGPoint(x: 0, y: 12.7))
		pathPath.line(to: CGPoint(x: 0, y: 3))
		pathPath.curve(to: CGPoint(x: 3, y: 0), controlPoint1:CGPoint(x: 0, y: 1.3), controlPoint2:CGPoint(x: 1.3, y: 0))
		pathPath.line(to: CGPoint(x: 11, y: 0))
		pathPath.curve(to: CGPoint(x: 14, y: 3), controlPoint1:CGPoint(x: 12.7, y: 0), controlPoint2:CGPoint(x: 14, y: 1.3))
		pathPath.line(to: CGPoint(x: 14, y: 11))
		pathPath.curve(to: CGPoint(x: 11, y: 14), controlPoint1:CGPoint(x: 14, y: 12.7), controlPoint2:CGPoint(x: 12.7, y: 14))
		pathPath.close()
		pathPath.move(to: CGPoint(x: 12, y: 3))
		pathPath.curve(to: CGPoint(x: 11, y: 2), controlPoint1:CGPoint(x: 12, y: 2.4), controlPoint2:CGPoint(x: 11.5, y: 2))
		pathPath.line(to: CGPoint(x: 3, y: 2))
		pathPath.curve(to: CGPoint(x: 2, y: 3), controlPoint1:CGPoint(x: 2.5, y: 2), controlPoint2:CGPoint(x: 2, y: 2.4))
		pathPath.line(to: CGPoint(x: 2, y: 5.5))
		pathPath.curve(to: CGPoint(x: 2.5, y: 6), controlPoint1:CGPoint(x: 2, y: 5.8), controlPoint2:CGPoint(x: 2.2, y: 6))
		pathPath.line(to: CGPoint(x: 11.5, y: 6))
		pathPath.curve(to: CGPoint(x: 12, y: 5.5), controlPoint1:CGPoint(x: 11.8, y: 6), controlPoint2:CGPoint(x: 12, y: 5.8))
		pathPath.line(to: CGPoint(x: 12, y: 3))
		pathPath.close()
		pathPath.move(to: CGPoint(x: 12, y: 8.5))
		pathPath.curve(to: CGPoint(x: 11.5, y: 8), controlPoint1:CGPoint(x: 12, y: 8.2), controlPoint2:CGPoint(x: 11.8, y: 8))
		pathPath.line(to: CGPoint(x: 2.5, y: 8))
		pathPath.curve(to: CGPoint(x: 2, y: 8.5), controlPoint1:CGPoint(x: 2.2, y: 8), controlPoint2:CGPoint(x: 2, y: 8.2))
		pathPath.line(to: CGPoint(x: 2, y: 11))
		pathPath.curve(to: CGPoint(x: 3, y: 12), controlPoint1:CGPoint(x: 2, y: 11.6), controlPoint2:CGPoint(x: 2.5, y: 12))
		pathPath.line(to: CGPoint(x: 11, y: 12))
		pathPath.curve(to: CGPoint(x: 12, y: 11), controlPoint1:CGPoint(x: 11.5, y: 12), controlPoint2:CGPoint(x: 12, y: 11.6))
		pathPath.line(to: CGPoint(x: 12, y: 8.5))
		pathPath.close()
		pathPath.move(to: CGPoint(x: 12, y: 8.5))
		
		return pathPath
	}
	
	func path3Path() -> NSBezierPath{
		let path3Path = NSBezierPath()
		path3Path.move(to: CGPoint(x: 11, y: 14))
		path3Path.line(to: CGPoint(x: 3, y: 14))
		path3Path.curve(to: CGPoint(x: 0, y: 11), controlPoint1:CGPoint(x: 1.3, y: 14), controlPoint2:CGPoint(x: 0, y: 12.7))
		path3Path.line(to: CGPoint(x: 0, y: 3))
		path3Path.curve(to: CGPoint(x: 3, y: 0), controlPoint1:CGPoint(x: 0, y: 1.3), controlPoint2:CGPoint(x: 1.3, y: 0))
		path3Path.line(to: CGPoint(x: 11, y: 0))
		path3Path.curve(to: CGPoint(x: 14, y: 3), controlPoint1:CGPoint(x: 12.7, y: 0), controlPoint2:CGPoint(x: 14, y: 1.3))
		path3Path.line(to: CGPoint(x: 14, y: 11))
		path3Path.curve(to: CGPoint(x: 11, y: 14), controlPoint1:CGPoint(x: 14, y: 12.7), controlPoint2:CGPoint(x: 12.7, y: 14))
		path3Path.close()
		path3Path.move(to: CGPoint(x: 12, y: 3))
		path3Path.curve(to: CGPoint(x: 11, y: 2), controlPoint1:CGPoint(x: 12, y: 2.4), controlPoint2:CGPoint(x: 11.5, y: 2))
		path3Path.line(to: CGPoint(x: 3, y: 2))
		path3Path.curve(to: CGPoint(x: 2, y: 3), controlPoint1:CGPoint(x: 2.5, y: 2), controlPoint2:CGPoint(x: 2, y: 2.4))
		path3Path.line(to: CGPoint(x: 2, y: 5.5))
		path3Path.curve(to: CGPoint(x: 2.5, y: 6), controlPoint1:CGPoint(x: 2, y: 5.8), controlPoint2:CGPoint(x: 2.2, y: 6))
		path3Path.line(to: CGPoint(x: 11.5, y: 6))
		path3Path.curve(to: CGPoint(x: 12, y: 5.5), controlPoint1:CGPoint(x: 11.8, y: 6), controlPoint2:CGPoint(x: 12, y: 5.8))
		path3Path.line(to: CGPoint(x: 12, y: 3))
		path3Path.close()
		path3Path.move(to: CGPoint(x: 12, y: 8.5))
		path3Path.curve(to: CGPoint(x: 11.5, y: 8), controlPoint1:CGPoint(x: 12, y: 8.2), controlPoint2:CGPoint(x: 11.8, y: 8))
		path3Path.line(to: CGPoint(x: 2.5, y: 8))
		path3Path.curve(to: CGPoint(x: 2, y: 8.5), controlPoint1:CGPoint(x: 2.2, y: 8), controlPoint2:CGPoint(x: 2, y: 8.2))
		path3Path.line(to: CGPoint(x: 2, y: 11))
		path3Path.curve(to: CGPoint(x: 3, y: 12), controlPoint1:CGPoint(x: 2, y: 11.6), controlPoint2:CGPoint(x: 2.5, y: 12))
		path3Path.line(to: CGPoint(x: 11, y: 12))
		path3Path.curve(to: CGPoint(x: 12, y: 11), controlPoint1:CGPoint(x: 11.5, y: 12), controlPoint2:CGPoint(x: 12, y: 11.6))
		path3Path.line(to: CGPoint(x: 12, y: 8.5))
		path3Path.close()
		path3Path.move(to: CGPoint(x: 12, y: 8.5))
		
		return path3Path
	}
	
	func path2Path() -> NSBezierPath{
		let path2Path = NSBezierPath()
		path2Path.move(to: CGPoint(x: 11, y: 14))
		path2Path.line(to: CGPoint(x: 3, y: 14))
		path2Path.curve(to: CGPoint(x: 0, y: 11), controlPoint1:CGPoint(x: 1.3, y: 14), controlPoint2:CGPoint(x: 0, y: 12.7))
		path2Path.line(to: CGPoint(x: 0, y: 3))
		path2Path.curve(to: CGPoint(x: 3, y: 0), controlPoint1:CGPoint(x: 0, y: 1.3), controlPoint2:CGPoint(x: 1.3, y: 0))
		path2Path.line(to: CGPoint(x: 11, y: 0))
		path2Path.curve(to: CGPoint(x: 14, y: 3), controlPoint1:CGPoint(x: 12.7, y: 0), controlPoint2:CGPoint(x: 14, y: 1.3))
		path2Path.line(to: CGPoint(x: 14, y: 11))
		path2Path.curve(to: CGPoint(x: 11, y: 14), controlPoint1:CGPoint(x: 14, y: 12.7), controlPoint2:CGPoint(x: 12.7, y: 14))
		path2Path.close()
		path2Path.move(to: CGPoint(x: 12, y: 3))
		path2Path.curve(to: CGPoint(x: 11, y: 2), controlPoint1:CGPoint(x: 12, y: 2.4), controlPoint2:CGPoint(x: 11.5, y: 2))
		path2Path.line(to: CGPoint(x: 3, y: 2))
		path2Path.curve(to: CGPoint(x: 2, y: 3), controlPoint1:CGPoint(x: 2.5, y: 2), controlPoint2:CGPoint(x: 2, y: 2.4))
		path2Path.line(to: CGPoint(x: 2, y: 5.5))
		path2Path.curve(to: CGPoint(x: 2.5, y: 6), controlPoint1:CGPoint(x: 2, y: 5.8), controlPoint2:CGPoint(x: 2.2, y: 6))
		path2Path.line(to: CGPoint(x: 11.5, y: 6))
		path2Path.curve(to: CGPoint(x: 12, y: 5.5), controlPoint1:CGPoint(x: 11.8, y: 6), controlPoint2:CGPoint(x: 12, y: 5.8))
		path2Path.line(to: CGPoint(x: 12, y: 3))
		path2Path.close()
		path2Path.move(to: CGPoint(x: 12, y: 8.5))
		path2Path.curve(to: CGPoint(x: 11.5, y: 8), controlPoint1:CGPoint(x: 12, y: 8.2), controlPoint2:CGPoint(x: 11.8, y: 8))
		path2Path.line(to: CGPoint(x: 2.5, y: 8))
		path2Path.curve(to: CGPoint(x: 2, y: 8.5), controlPoint1:CGPoint(x: 2.2, y: 8), controlPoint2:CGPoint(x: 2, y: 8.2))
		path2Path.line(to: CGPoint(x: 2, y: 11))
		path2Path.curve(to: CGPoint(x: 3, y: 12), controlPoint1:CGPoint(x: 2, y: 11.6), controlPoint2:CGPoint(x: 2.5, y: 12))
		path2Path.line(to: CGPoint(x: 11, y: 12))
		path2Path.curve(to: CGPoint(x: 12, y: 11), controlPoint1:CGPoint(x: 11.5, y: 12), controlPoint2:CGPoint(x: 12, y: 11.6))
		path2Path.line(to: CGPoint(x: 12, y: 8.5))
		path2Path.close()
		path2Path.move(to: CGPoint(x: 12, y: 8.5))
		
		return path2Path
	}
	
	
}
