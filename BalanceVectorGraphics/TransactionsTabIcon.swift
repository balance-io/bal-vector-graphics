//
//  TransactionsTabIcon.swift
//
//  Code generated using QuartzCode 1.53.0 on 12/11/16.
//  www.quartzcodeapp.com
//

import Cocoa


public class TransactionsTabIcon: NSView, TabIcon, CAAnimationDelegate {
	
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
				
		let Icon = CAShapeLayer()
		Icon.frame           = CGRect(x: 6, y: 3, width: 14, height: 14)
		Icon.fillColor       = self.tabIconColor.cgColor
		Icon.strokeColor     = NSColor(red:0.867, green: 0.894, blue:0.922, alpha:0.46).cgColor
		Icon.lineWidth       = 0
		Icon.lineDashPattern = [0.5, 0]
		Icon.path            = IconPath().quartzPath
		self.layer?.addSublayer(Icon)
		layers["Icon"] = Icon
		
		let Icon3 = CAShapeLayer()
		Icon3.frame           = CGRect(x: 6, y: 3, width: 14, height: 14)
		Icon3.opacity         = 0.02
		Icon3.fillColor       = nil
		Icon3.strokeColor     = self.tabIconBorderColor.cgColor
		Icon3.lineDashPattern = [0.5, 0]
		Icon3.path            = Icon3Path().quartzPath
		self.layer?.addSublayer(Icon3)
		layers["Icon3"] = Icon3
		let Icon2 = CAShapeLayer()
		Icon2.frame           = CGRect(x: 0, y: 0, width: 14, height: 14)
		Icon2.fillColor       = NSColor(red:0.456, green: 0.781, blue:0.204, alpha:1).cgColor
		Icon2.strokeColor     = NSColor(red:0.877, green: 0.89, blue:0.922, alpha:1).cgColor
		Icon2.lineWidth       = 0
		Icon2.lineDashPattern = [0.5, 0]
		Icon2.path            = Icon2Path().quartzPath
		Icon3.mask = Icon2
		layers["Icon2"] = Icon2
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
		
		////Icon animation
		let IconFillColorAnim            = CAKeyframeAnimation(keyPath:"fillColor")
		IconFillColorAnim.values         = [self.tabIconColor.cgColor, 
			 self.tabIconSelectedColor.cgColor]
		IconFillColorAnim.keyTimes       = [0, 1]
		IconFillColorAnim.duration       = 0.05
		IconFillColorAnim.timingFunction = CAMediaTimingFunction(controlPoints: 0.25, 0.1, 0.25, 1)
		
		var IconHighlightAnim : CAAnimationGroup = QCMethod.group(animations: [IconFillColorAnim], fillMode:fillMode)
		if (reverseAnimation){ IconHighlightAnim = QCMethod.reverseAnimation(anim: IconHighlightAnim, totalDuration:totalDuration) as! CAAnimationGroup}
		layers["Icon"]?.add(IconHighlightAnim, forKey:"IconHighlightAnim")
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
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["Icon"] as! CALayer).animation(forKey: "IconHighlightAnim"), theLayer:(layers["Icon"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "highlight"{
			(layers["Icon"] as! CALayer).removeAnimation(forKey: "IconHighlightAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func IconPath() -> NSBezierPath{
		let IconPath = NSBezierPath()
		IconPath.move(to: CGPoint(x: 0, y: 11.49))
		IconPath.curve(to: CGPoint(x: 2.51, y: 14), controlPoint1:CGPoint(x: 0, y: 12.876), controlPoint2:CGPoint(x: 1.129, y: 14))
		IconPath.line(to: CGPoint(x: 5.009, y: 14))
		IconPath.curve(to: CGPoint(x: 6, y: 13.009), controlPoint1:CGPoint(x: 5.556, y: 14), controlPoint2:CGPoint(x: 6, y: 13.549))
		IconPath.line(to: CGPoint(x: 6, y: 8.991))
		IconPath.curve(to: CGPoint(x: 5.009, y: 8), controlPoint1:CGPoint(x: 6, y: 8.444), controlPoint2:CGPoint(x: 5.549, y: 8))
		IconPath.line(to: CGPoint(x: 0.991, y: 8))
		IconPath.curve(to: CGPoint(x: 0, y: 8.991), controlPoint1:CGPoint(x: 0.444, y: 8), controlPoint2:CGPoint(x: 0, y: 8.451))
		IconPath.line(to: CGPoint(x: 0, y: 11.49))
		IconPath.close()
		IconPath.move(to: CGPoint(x: 0, y: 5.009))
		IconPath.curve(to: CGPoint(x: 0.991, y: 6), controlPoint1:CGPoint(x: 0, y: 5.556), controlPoint2:CGPoint(x: 0.451, y: 6))
		IconPath.line(to: CGPoint(x: 5.009, y: 6))
		IconPath.curve(to: CGPoint(x: 6, y: 5.009), controlPoint1:CGPoint(x: 5.556, y: 6), controlPoint2:CGPoint(x: 6, y: 5.549))
		IconPath.line(to: CGPoint(x: 6, y: 0.991))
		IconPath.curve(to: CGPoint(x: 5.009, y: 0), controlPoint1:CGPoint(x: 6, y: 0.444), controlPoint2:CGPoint(x: 5.549, y: 0))
		IconPath.line(to: CGPoint(x: 2.51, y: 0))
		IconPath.curve(to: CGPoint(x: 0, y: 2.51), controlPoint1:CGPoint(x: 1.124, y: 0), controlPoint2:CGPoint(x: 0, y: 1.129))
		IconPath.line(to: CGPoint(x: 0, y: 5.009))
		IconPath.close()
		IconPath.move(to: CGPoint(x: 8, y: 5.009))
		IconPath.curve(to: CGPoint(x: 8.991, y: 6), controlPoint1:CGPoint(x: 8, y: 5.556), controlPoint2:CGPoint(x: 8.451, y: 6))
		IconPath.line(to: CGPoint(x: 13.009, y: 6))
		IconPath.curve(to: CGPoint(x: 14, y: 5.009), controlPoint1:CGPoint(x: 13.556, y: 6), controlPoint2:CGPoint(x: 14, y: 5.549))
		IconPath.line(to: CGPoint(x: 14, y: 2.51))
		IconPath.curve(to: CGPoint(x: 11.49, y: 0), controlPoint1:CGPoint(x: 14, y: 1.124), controlPoint2:CGPoint(x: 12.871, y: 0))
		IconPath.line(to: CGPoint(x: 8.991, y: 0))
		IconPath.curve(to: CGPoint(x: 8, y: 0.991), controlPoint1:CGPoint(x: 8.444, y: 0), controlPoint2:CGPoint(x: 8, y: 0.451))
		IconPath.line(to: CGPoint(x: 8, y: 5.009))
		IconPath.close()
		IconPath.move(to: CGPoint(x: 8, y: 13.009))
		IconPath.curve(to: CGPoint(x: 8.991, y: 14), controlPoint1:CGPoint(x: 8, y: 13.556), controlPoint2:CGPoint(x: 8.451, y: 14))
		IconPath.line(to: CGPoint(x: 11.49, y: 14))
		IconPath.curve(to: CGPoint(x: 14, y: 11.49), controlPoint1:CGPoint(x: 12.876, y: 14), controlPoint2:CGPoint(x: 14, y: 12.871))
		IconPath.line(to: CGPoint(x: 14, y: 8.991))
		IconPath.curve(to: CGPoint(x: 13.009, y: 8), controlPoint1:CGPoint(x: 14, y: 8.444), controlPoint2:CGPoint(x: 13.549, y: 8))
		IconPath.line(to: CGPoint(x: 8.991, y: 8))
		IconPath.curve(to: CGPoint(x: 8, y: 8.991), controlPoint1:CGPoint(x: 8.444, y: 8), controlPoint2:CGPoint(x: 8, y: 8.451))
		IconPath.line(to: CGPoint(x: 8, y: 13.009))
		IconPath.close()
		IconPath.move(to: CGPoint(x: 8, y: 13.009))
		
		return IconPath
	}
	
	func Icon3Path() -> NSBezierPath{
		let Icon3Path = NSBezierPath()
		Icon3Path.move(to: CGPoint(x: 0, y: 11.49))
		Icon3Path.curve(to: CGPoint(x: 2.51, y: 14), controlPoint1:CGPoint(x: 0, y: 12.876), controlPoint2:CGPoint(x: 1.129, y: 14))
		Icon3Path.line(to: CGPoint(x: 5.009, y: 14))
		Icon3Path.curve(to: CGPoint(x: 6, y: 13.009), controlPoint1:CGPoint(x: 5.556, y: 14), controlPoint2:CGPoint(x: 6, y: 13.549))
		Icon3Path.line(to: CGPoint(x: 6, y: 8.991))
		Icon3Path.curve(to: CGPoint(x: 5.009, y: 8), controlPoint1:CGPoint(x: 6, y: 8.444), controlPoint2:CGPoint(x: 5.549, y: 8))
		Icon3Path.line(to: CGPoint(x: 0.991, y: 8))
		Icon3Path.curve(to: CGPoint(x: 0, y: 8.991), controlPoint1:CGPoint(x: 0.444, y: 8), controlPoint2:CGPoint(x: 0, y: 8.451))
		Icon3Path.line(to: CGPoint(x: 0, y: 11.49))
		Icon3Path.close()
		Icon3Path.move(to: CGPoint(x: 0, y: 5.009))
		Icon3Path.curve(to: CGPoint(x: 0.991, y: 6), controlPoint1:CGPoint(x: 0, y: 5.556), controlPoint2:CGPoint(x: 0.451, y: 6))
		Icon3Path.line(to: CGPoint(x: 5.009, y: 6))
		Icon3Path.curve(to: CGPoint(x: 6, y: 5.009), controlPoint1:CGPoint(x: 5.556, y: 6), controlPoint2:CGPoint(x: 6, y: 5.549))
		Icon3Path.line(to: CGPoint(x: 6, y: 0.991))
		Icon3Path.curve(to: CGPoint(x: 5.009, y: 0), controlPoint1:CGPoint(x: 6, y: 0.444), controlPoint2:CGPoint(x: 5.549, y: 0))
		Icon3Path.line(to: CGPoint(x: 2.51, y: 0))
		Icon3Path.curve(to: CGPoint(x: 0, y: 2.51), controlPoint1:CGPoint(x: 1.124, y: 0), controlPoint2:CGPoint(x: 0, y: 1.129))
		Icon3Path.line(to: CGPoint(x: 0, y: 5.009))
		Icon3Path.close()
		Icon3Path.move(to: CGPoint(x: 8, y: 5.009))
		Icon3Path.curve(to: CGPoint(x: 8.991, y: 6), controlPoint1:CGPoint(x: 8, y: 5.556), controlPoint2:CGPoint(x: 8.451, y: 6))
		Icon3Path.line(to: CGPoint(x: 13.009, y: 6))
		Icon3Path.curve(to: CGPoint(x: 14, y: 5.009), controlPoint1:CGPoint(x: 13.556, y: 6), controlPoint2:CGPoint(x: 14, y: 5.549))
		Icon3Path.line(to: CGPoint(x: 14, y: 2.51))
		Icon3Path.curve(to: CGPoint(x: 11.49, y: 0), controlPoint1:CGPoint(x: 14, y: 1.124), controlPoint2:CGPoint(x: 12.871, y: 0))
		Icon3Path.line(to: CGPoint(x: 8.991, y: 0))
		Icon3Path.curve(to: CGPoint(x: 8, y: 0.991), controlPoint1:CGPoint(x: 8.444, y: 0), controlPoint2:CGPoint(x: 8, y: 0.451))
		Icon3Path.line(to: CGPoint(x: 8, y: 5.009))
		Icon3Path.close()
		Icon3Path.move(to: CGPoint(x: 8, y: 13.009))
		Icon3Path.curve(to: CGPoint(x: 8.991, y: 14), controlPoint1:CGPoint(x: 8, y: 13.556), controlPoint2:CGPoint(x: 8.451, y: 14))
		Icon3Path.line(to: CGPoint(x: 11.49, y: 14))
		Icon3Path.curve(to: CGPoint(x: 14, y: 11.49), controlPoint1:CGPoint(x: 12.876, y: 14), controlPoint2:CGPoint(x: 14, y: 12.871))
		Icon3Path.line(to: CGPoint(x: 14, y: 8.991))
		Icon3Path.curve(to: CGPoint(x: 13.009, y: 8), controlPoint1:CGPoint(x: 14, y: 8.444), controlPoint2:CGPoint(x: 13.549, y: 8))
		Icon3Path.line(to: CGPoint(x: 8.991, y: 8))
		Icon3Path.curve(to: CGPoint(x: 8, y: 8.991), controlPoint1:CGPoint(x: 8.444, y: 8), controlPoint2:CGPoint(x: 8, y: 8.451))
		Icon3Path.line(to: CGPoint(x: 8, y: 13.009))
		Icon3Path.close()
		Icon3Path.move(to: CGPoint(x: 8, y: 13.009))
		
		return Icon3Path
	}
	
	func Icon2Path() -> NSBezierPath{
		let Icon2Path = NSBezierPath()
		Icon2Path.move(to: CGPoint(x: 0, y: 11.49))
		Icon2Path.curve(to: CGPoint(x: 2.51, y: 14), controlPoint1:CGPoint(x: 0, y: 12.876), controlPoint2:CGPoint(x: 1.129, y: 14))
		Icon2Path.line(to: CGPoint(x: 5.009, y: 14))
		Icon2Path.curve(to: CGPoint(x: 6, y: 13.009), controlPoint1:CGPoint(x: 5.556, y: 14), controlPoint2:CGPoint(x: 6, y: 13.549))
		Icon2Path.line(to: CGPoint(x: 6, y: 8.991))
		Icon2Path.curve(to: CGPoint(x: 5.009, y: 8), controlPoint1:CGPoint(x: 6, y: 8.444), controlPoint2:CGPoint(x: 5.549, y: 8))
		Icon2Path.line(to: CGPoint(x: 0.991, y: 8))
		Icon2Path.curve(to: CGPoint(x: 0, y: 8.991), controlPoint1:CGPoint(x: 0.444, y: 8), controlPoint2:CGPoint(x: 0, y: 8.451))
		Icon2Path.line(to: CGPoint(x: 0, y: 11.49))
		Icon2Path.close()
		Icon2Path.move(to: CGPoint(x: 0, y: 5.009))
		Icon2Path.curve(to: CGPoint(x: 0.991, y: 6), controlPoint1:CGPoint(x: 0, y: 5.556), controlPoint2:CGPoint(x: 0.451, y: 6))
		Icon2Path.line(to: CGPoint(x: 5.009, y: 6))
		Icon2Path.curve(to: CGPoint(x: 6, y: 5.009), controlPoint1:CGPoint(x: 5.556, y: 6), controlPoint2:CGPoint(x: 6, y: 5.549))
		Icon2Path.line(to: CGPoint(x: 6, y: 0.991))
		Icon2Path.curve(to: CGPoint(x: 5.009, y: 0), controlPoint1:CGPoint(x: 6, y: 0.444), controlPoint2:CGPoint(x: 5.549, y: 0))
		Icon2Path.line(to: CGPoint(x: 2.51, y: 0))
		Icon2Path.curve(to: CGPoint(x: 0, y: 2.51), controlPoint1:CGPoint(x: 1.124, y: 0), controlPoint2:CGPoint(x: 0, y: 1.129))
		Icon2Path.line(to: CGPoint(x: 0, y: 5.009))
		Icon2Path.close()
		Icon2Path.move(to: CGPoint(x: 8, y: 5.009))
		Icon2Path.curve(to: CGPoint(x: 8.991, y: 6), controlPoint1:CGPoint(x: 8, y: 5.556), controlPoint2:CGPoint(x: 8.451, y: 6))
		Icon2Path.line(to: CGPoint(x: 13.009, y: 6))
		Icon2Path.curve(to: CGPoint(x: 14, y: 5.009), controlPoint1:CGPoint(x: 13.556, y: 6), controlPoint2:CGPoint(x: 14, y: 5.549))
		Icon2Path.line(to: CGPoint(x: 14, y: 2.51))
		Icon2Path.curve(to: CGPoint(x: 11.49, y: 0), controlPoint1:CGPoint(x: 14, y: 1.124), controlPoint2:CGPoint(x: 12.871, y: 0))
		Icon2Path.line(to: CGPoint(x: 8.991, y: 0))
		Icon2Path.curve(to: CGPoint(x: 8, y: 0.991), controlPoint1:CGPoint(x: 8.444, y: 0), controlPoint2:CGPoint(x: 8, y: 0.451))
		Icon2Path.line(to: CGPoint(x: 8, y: 5.009))
		Icon2Path.close()
		Icon2Path.move(to: CGPoint(x: 8, y: 13.009))
		Icon2Path.curve(to: CGPoint(x: 8.991, y: 14), controlPoint1:CGPoint(x: 8, y: 13.556), controlPoint2:CGPoint(x: 8.451, y: 14))
		Icon2Path.line(to: CGPoint(x: 11.49, y: 14))
		Icon2Path.curve(to: CGPoint(x: 14, y: 11.49), controlPoint1:CGPoint(x: 12.876, y: 14), controlPoint2:CGPoint(x: 14, y: 12.871))
		Icon2Path.line(to: CGPoint(x: 14, y: 8.991))
		Icon2Path.curve(to: CGPoint(x: 13.009, y: 8), controlPoint1:CGPoint(x: 14, y: 8.444), controlPoint2:CGPoint(x: 13.549, y: 8))
		Icon2Path.line(to: CGPoint(x: 8.991, y: 8))
		Icon2Path.curve(to: CGPoint(x: 8, y: 8.991), controlPoint1:CGPoint(x: 8.444, y: 8), controlPoint2:CGPoint(x: 8, y: 8.451))
		Icon2Path.line(to: CGPoint(x: 8, y: 13.009))
		Icon2Path.close()
		Icon2Path.move(to: CGPoint(x: 8, y: 13.009))
		
		return Icon2Path
	}
	
	
}
