//
//  FeedTabIcon.swift
//
//  Code generated using QuartzCode 1.53.0 on 12/14/16.
//  www.quartzcodeapp.com
//

import Cocoa


public class FeedTabIcon: NSView, TabIcon, CAAnimationDelegate {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = false
	
	public var tabIconColor : NSColor!
	public var tabIconBorderColor : NSColor!
	public var tabIconSelectedColor : NSColor!
    public var bubbleColor : NSColor! {
        willSet {
            if let newValue = newValue, let notificationsBubble = layers["notificationsbubble"] as? CAShapeLayer {
                if notificationsBubble.fillColor == bubbleColor.cgColor {
                    notificationsBubble.fillColor = newValue.cgColor
                }
            }
        }
    }
    public var bubbleSelectedColor : NSColor! {
        willSet {
            if let newValue = newValue, let notificationsBubble = layers["notificationsbubble"] as? CAShapeLayer {
                if notificationsBubble.fillColor == bubbleSelectedColor.cgColor {
                    notificationsBubble.fillColor = newValue.cgColor
                }
            }
        }
    }
	
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
		self.bubbleColor = NSColor(red:0.443, green: 0.49, blue:0.541, alpha:1)
		self.bubbleSelectedColor = NSColor(red:0.0745, green: 0.0863, blue:0.098, alpha:1)
	}
	
	func setupLayers(){
		self.wantsLayer = true
				
		let path = CAShapeLayer()
		path.frame       = CGRect(x: 6, y: 3, width: 13, height: 13)
		path.fillRule    = kCAFillRuleEvenOdd
		path.fillColor   = self.tabIconColor.cgColor
		path.strokeColor = NSColor.black.cgColor
		path.lineWidth   = 0
		path.path        = pathPath().quartzPath
		self.layer?.addSublayer(path)
		layers["path"] = path
		
		let path2 = CAShapeLayer()
		path2.frame       = CGRect(x: 6, y: 3, width: 13, height: 13)
		path2.opacity     = 0.02
		path2.fillRule    = kCAFillRuleEvenOdd
		path2.fillColor   = nil
		path2.strokeColor = self.tabIconBorderColor.cgColor
		path2.path        = path2Path().quartzPath
		self.layer?.addSublayer(path2)
		layers["path2"] = path2
		let notificationsnobubble = CAShapeLayer()
		notificationsnobubble.frame       = CGRect(x: -0, y: 0, width: 13, height: 13)
		notificationsnobubble.fillColor   = NSColor(red:0.588, green: 0.588, blue:0.588, alpha:1).cgColor
		notificationsnobubble.strokeColor = NSColor.black.cgColor
		notificationsnobubble.lineWidth   = 0
		notificationsnobubble.path        = notificationsnobubblePath().quartzPath
		path2.mask = notificationsnobubble
		layers["notificationsnobubble"] = notificationsnobubble
		
		let notificationsbubble = CAShapeLayer()
		notificationsbubble.frame       = CGRect(x: 16, y: 13, width: 5, height: 5)
		notificationsbubble.fillColor   = self.bubbleColor.cgColor
		notificationsbubble.strokeColor = NSColor.black.cgColor
		notificationsbubble.lineWidth   = 0
		notificationsbubble.path        = notificationsbubblePath().quartzPath
		self.layer?.addSublayer(notificationsbubble)
		layers["notificationsbubble"] = notificationsbubble
		
		let notificationsbubble3 = CAShapeLayer()
		notificationsbubble3.frame       = CGRect(x: 16, y: 13, width: 5, height: 5)
		notificationsbubble3.opacity     = 0.02
		notificationsbubble3.fillColor   = nil
		notificationsbubble3.strokeColor = self.tabIconBorderColor.cgColor
		notificationsbubble3.path        = notificationsbubble3Path().quartzPath
		self.layer?.addSublayer(notificationsbubble3)
		layers["notificationsbubble3"] = notificationsbubble3
		let notificationsbubble2 = CAShapeLayer()
		notificationsbubble2.frame       = CGRect(x: 0, y: 0, width: 5, height: 5)
		notificationsbubble2.fillColor   = NSColor(red:0.322, green: 0.737, blue:0.753, alpha:1).cgColor
		notificationsbubble2.strokeColor = NSColor.white.cgColor
		notificationsbubble2.lineWidth   = 0
		notificationsbubble2.path        = notificationsbubble2Path().quartzPath
		notificationsbubble3.mask = notificationsbubble2
		layers["notificationsbubble2"] = notificationsbubble2
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
		
		////Notificationsbubble animation
		let notificationsbubbleFillColorAnim = CAKeyframeAnimation(keyPath:"fillColor")
		notificationsbubbleFillColorAnim.values = [self.bubbleColor.cgColor, 
			 self.bubbleSelectedColor.cgColor]
		notificationsbubbleFillColorAnim.keyTimes = [0, 1]
		notificationsbubbleFillColorAnim.duration = 0.05
		notificationsbubbleFillColorAnim.timingFunction = CAMediaTimingFunction(controlPoints: 0.25, 0.1, 0.25, 1)
		
		var notificationsbubbleHighlightAnim : CAAnimationGroup = QCMethod.group(animations: [notificationsbubbleFillColorAnim], fillMode:fillMode)
		if (reverseAnimation){ notificationsbubbleHighlightAnim = QCMethod.reverseAnimation(anim: notificationsbubbleHighlightAnim, totalDuration:totalDuration) as! CAAnimationGroup}
		layers["notificationsbubble"]?.add(notificationsbubbleHighlightAnim, forKey:"notificationsbubbleHighlightAnim")
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
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["notificationsbubble"] as! CALayer).animation(forKey: "notificationsbubbleHighlightAnim"), theLayer:(layers["notificationsbubble"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "highlight"{
			(layers["path"] as! CALayer).removeAnimation(forKey: "pathHighlightAnim")
			(layers["notificationsbubble"] as! CALayer).removeAnimation(forKey: "notificationsbubbleHighlightAnim")
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
		pathPath.move(to: CGPoint(x: 9.035, y: 13))
		pathPath.line(to: CGPoint(x: 3.501, y: 13))
		pathPath.curve(to: CGPoint(x: 0, y: 9.499), controlPoint1:CGPoint(x: 1.568, y: 13), controlPoint2:CGPoint(x: 0, y: 11.433))
		pathPath.line(to: CGPoint(x: 0, y: 3.501))
		pathPath.curve(to: CGPoint(x: 3.501, y: 0), controlPoint1:CGPoint(x: 0, y: 1.568), controlPoint2:CGPoint(x: 1.567, y: 0))
		pathPath.line(to: CGPoint(x: 9.499, y: 0))
		pathPath.curve(to: CGPoint(x: 13, y: 3.501), controlPoint1:CGPoint(x: 11.432, y: 0), controlPoint2:CGPoint(x: 13, y: 1.567))
		pathPath.line(to: CGPoint(x: 13, y: 9.035))
		pathPath.curve(to: CGPoint(x: 12.5, y: 9), controlPoint1:CGPoint(x: 12.837, y: 9.012), controlPoint2:CGPoint(x: 12.67, y: 9))
		pathPath.curve(to: CGPoint(x: 9, y: 12.5), controlPoint1:CGPoint(x: 10.567, y: 9), controlPoint2:CGPoint(x: 9, y: 10.567))
		pathPath.curve(to: CGPoint(x: 9.035, y: 13), controlPoint1:CGPoint(x: 9, y: 12.67), controlPoint2:CGPoint(x: 9.012, y: 12.837))
		pathPath.close()
		pathPath.move(to: CGPoint(x: 9.035, y: 13))
		
		return pathPath
	}
	
	func path2Path() -> NSBezierPath{
		let path2Path = NSBezierPath()
		path2Path.move(to: CGPoint(x: 9.035, y: 13))
		path2Path.line(to: CGPoint(x: 3.501, y: 13))
		path2Path.curve(to: CGPoint(x: 0, y: 9.499), controlPoint1:CGPoint(x: 1.568, y: 13), controlPoint2:CGPoint(x: 0, y: 11.433))
		path2Path.line(to: CGPoint(x: 0, y: 3.501))
		path2Path.curve(to: CGPoint(x: 3.501, y: 0), controlPoint1:CGPoint(x: 0, y: 1.568), controlPoint2:CGPoint(x: 1.567, y: 0))
		path2Path.line(to: CGPoint(x: 9.499, y: 0))
		path2Path.curve(to: CGPoint(x: 13, y: 3.501), controlPoint1:CGPoint(x: 11.432, y: 0), controlPoint2:CGPoint(x: 13, y: 1.567))
		path2Path.line(to: CGPoint(x: 13, y: 9.035))
		path2Path.curve(to: CGPoint(x: 12.5, y: 9), controlPoint1:CGPoint(x: 12.837, y: 9.012), controlPoint2:CGPoint(x: 12.67, y: 9))
		path2Path.curve(to: CGPoint(x: 9, y: 12.5), controlPoint1:CGPoint(x: 10.567, y: 9), controlPoint2:CGPoint(x: 9, y: 10.567))
		path2Path.curve(to: CGPoint(x: 9.035, y: 13), controlPoint1:CGPoint(x: 9, y: 12.67), controlPoint2:CGPoint(x: 9.012, y: 12.837))
		path2Path.close()
		path2Path.move(to: CGPoint(x: 9.035, y: 13))
		
		return path2Path
	}
	
	func notificationsnobubblePath() -> NSBezierPath{
		let notificationsnobubblePath = NSBezierPath()
		notificationsnobubblePath.move(to: CGPoint(x: 9.035, y: 13))
		notificationsnobubblePath.line(to: CGPoint(x: 3.501, y: 13))
		notificationsnobubblePath.curve(to: CGPoint(x: 0, y: 9.499), controlPoint1:CGPoint(x: 1.568, y: 13), controlPoint2:CGPoint(x: 0, y: 11.433))
		notificationsnobubblePath.line(to: CGPoint(x: 0, y: 3.501))
		notificationsnobubblePath.curve(to: CGPoint(x: 3.501, y: 0), controlPoint1:CGPoint(x: 0, y: 1.568), controlPoint2:CGPoint(x: 1.567, y: 0))
		notificationsnobubblePath.line(to: CGPoint(x: 9.499, y: 0))
		notificationsnobubblePath.curve(to: CGPoint(x: 13, y: 3.501), controlPoint1:CGPoint(x: 11.432, y: 0), controlPoint2:CGPoint(x: 13, y: 1.567))
		notificationsnobubblePath.line(to: CGPoint(x: 13, y: 9.035))
		notificationsnobubblePath.curve(to: CGPoint(x: 12.5, y: 9), controlPoint1:CGPoint(x: 12.837, y: 9.012), controlPoint2:CGPoint(x: 12.67, y: 9))
		notificationsnobubblePath.curve(to: CGPoint(x: 9, y: 12.5), controlPoint1:CGPoint(x: 10.567, y: 9), controlPoint2:CGPoint(x: 9, y: 10.567))
		notificationsnobubblePath.curve(to: CGPoint(x: 9.035, y: 13), controlPoint1:CGPoint(x: 9, y: 12.67), controlPoint2:CGPoint(x: 9.012, y: 12.837))
		notificationsnobubblePath.line(to: CGPoint(x: 9.035, y: 13))
		notificationsnobubblePath.close()
		notificationsnobubblePath.move(to: CGPoint(x: 9.035, y: 13))
		
		return notificationsnobubblePath
	}
	
	func notificationsbubblePath() -> NSBezierPath{
		let notificationsbubblePath = NSBezierPath()
		notificationsbubblePath.move(to: CGPoint(x: 2.5, y: 0))
		notificationsbubblePath.curve(to: CGPoint(x: 5, y: 2.5), controlPoint1:CGPoint(x: 3.881, y: 0), controlPoint2:CGPoint(x: 5, y: 1.119))
		notificationsbubblePath.curve(to: CGPoint(x: 2.5, y: 5), controlPoint1:CGPoint(x: 5, y: 3.881), controlPoint2:CGPoint(x: 3.881, y: 5))
		notificationsbubblePath.curve(to: CGPoint(x: 0, y: 2.5), controlPoint1:CGPoint(x: 1.119, y: 5), controlPoint2:CGPoint(x: 0, y: 3.881))
		notificationsbubblePath.curve(to: CGPoint(x: 2.5, y: 0), controlPoint1:CGPoint(x: 0, y: 1.119), controlPoint2:CGPoint(x: 1.119, y: 0))
		notificationsbubblePath.line(to: CGPoint(x: 2.5, y: 0))
		notificationsbubblePath.close()
		notificationsbubblePath.move(to: CGPoint(x: 2.5, y: 0))
		
		return notificationsbubblePath
	}
	
	func notificationsbubble3Path() -> NSBezierPath{
		let notificationsbubble3Path = NSBezierPath()
		notificationsbubble3Path.move(to: CGPoint(x: 2.5, y: 0))
		notificationsbubble3Path.curve(to: CGPoint(x: 5, y: 2.5), controlPoint1:CGPoint(x: 3.881, y: 0), controlPoint2:CGPoint(x: 5, y: 1.119))
		notificationsbubble3Path.curve(to: CGPoint(x: 2.5, y: 5), controlPoint1:CGPoint(x: 5, y: 3.881), controlPoint2:CGPoint(x: 3.881, y: 5))
		notificationsbubble3Path.curve(to: CGPoint(x: 0, y: 2.5), controlPoint1:CGPoint(x: 1.119, y: 5), controlPoint2:CGPoint(x: 0, y: 3.881))
		notificationsbubble3Path.curve(to: CGPoint(x: 2.5, y: 0), controlPoint1:CGPoint(x: 0, y: 1.119), controlPoint2:CGPoint(x: 1.119, y: 0))
		notificationsbubble3Path.line(to: CGPoint(x: 2.5, y: 0))
		notificationsbubble3Path.close()
		notificationsbubble3Path.move(to: CGPoint(x: 2.5, y: 0))
		
		return notificationsbubble3Path
	}
	
	func notificationsbubble2Path() -> NSBezierPath{
		let notificationsbubble2Path = NSBezierPath()
		notificationsbubble2Path.move(to: CGPoint(x: 2.5, y: 0))
		notificationsbubble2Path.curve(to: CGPoint(x: 5, y: 2.5), controlPoint1:CGPoint(x: 3.881, y: 0), controlPoint2:CGPoint(x: 5, y: 1.119))
		notificationsbubble2Path.curve(to: CGPoint(x: 2.5, y: 5), controlPoint1:CGPoint(x: 5, y: 3.881), controlPoint2:CGPoint(x: 3.881, y: 5))
		notificationsbubble2Path.curve(to: CGPoint(x: 0, y: 2.5), controlPoint1:CGPoint(x: 1.119, y: 5), controlPoint2:CGPoint(x: 0, y: 3.881))
		notificationsbubble2Path.curve(to: CGPoint(x: 2.5, y: 0), controlPoint1:CGPoint(x: 0, y: 1.119), controlPoint2:CGPoint(x: 1.119, y: 0))
		notificationsbubble2Path.line(to: CGPoint(x: 2.5, y: 0))
		notificationsbubble2Path.close()
		notificationsbubble2Path.move(to: CGPoint(x: 2.5, y: 0))
		
		return notificationsbubble2Path
	}
	
	
}
