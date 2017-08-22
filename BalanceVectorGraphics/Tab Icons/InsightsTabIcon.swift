//
//  InsightsTabIcon.swift
//
//  Code generated using QuartzCode 1.53.0 on 12/11/16.
//  www.quartzcodeapp.com
//

import Cocoa


public class InsightsTabIcon: NSView, TabIcon, CAAnimationDelegate {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = false
	
	public var tabIconColor : NSColor!
	public var tabIconBorderColor : NSColor!
	public var tabIconSelectedColor : NSColor!
	
	//MARK: - Life Cycle
    
    public init(tabIconColor: NSColor, tabIconBorderColor: NSColor, tabIconSelectedColor : NSColor) {
        super.init(frame: NSZeroRect)
        self.tabIconColor = tabIconColor
        self.tabIconBorderColor = tabIconBorderColor
        self.tabIconSelectedColor = tabIconSelectedColor
        setupLayers()
    }
	
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
				
		let insights = CAShapeLayer()
		insights.frame       = CGRect(x: 6, y: 3, width: 13, height: 14)
		insights.fillColor   = self.tabIconColor.cgColor
		insights.strokeColor = NSColor.black.cgColor
		insights.lineWidth   = 0
		insights.path        = insightsPath().quartzPath
		self.layer?.addSublayer(insights)
		layers["insights"] = insights
		
		let insights3 = CAShapeLayer()
		insights3.frame       = CGRect(x: 6, y: 3, width: 13, height: 14)
		insights3.opacity     = 0.02
		insights3.fillColor   = nil
		insights3.strokeColor = self.tabIconBorderColor.cgColor
		insights3.path        = insights3Path().quartzPath
		self.layer?.addSublayer(insights3)
		layers["insights3"] = insights3
		let insights2 = CAShapeLayer()
		insights2.frame       = CGRect(x: -0, y: 0, width: 13, height: 14)
		insights2.fillColor   = NSColor(red:0.0731, green: 0.146, blue:0.588, alpha:1).cgColor
		insights2.strokeColor = NSColor.black.cgColor
		insights2.lineWidth   = 0
		insights2.path        = insights2Path().quartzPath
		insights3.mask = insights2
		layers["insights2"] = insights2
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
		
		////Insights animation
		let insightsFillColorAnim            = CAKeyframeAnimation(keyPath:"fillColor")
		insightsFillColorAnim.values         = [self.tabIconColor.cgColor, 
			 self.tabIconSelectedColor.cgColor]
		insightsFillColorAnim.keyTimes       = [0, 1]
		insightsFillColorAnim.duration       = 0.05
		insightsFillColorAnim.timingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 0, 0)
		
		var insightsHighlightAnim : CAAnimationGroup = QCMethod.group(animations: [insightsFillColorAnim], fillMode:fillMode)
		if (reverseAnimation){ insightsHighlightAnim = QCMethod.reverseAnimation(anim: insightsHighlightAnim, totalDuration:totalDuration) as! CAAnimationGroup}
		layers["insights"]?.add(insightsHighlightAnim, forKey:"insightsHighlightAnim")
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
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["insights"] as! CALayer).animation(forKey: "insightsHighlightAnim"), theLayer:(layers["insights"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "highlight"{
			(layers["insights"] as! CALayer).removeAnimation(forKey: "insightsHighlightAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func insightsPath() -> NSBezierPath{
		let insightsPath = NSBezierPath()
		insightsPath.move(to: CGPoint(x: 0, y: 4))
		insightsPath.curve(to: CGPoint(x: 0.999, y: 5), controlPoint1:CGPoint(x: 0, y: 4.552), controlPoint2:CGPoint(x: 0.443, y: 5))
		insightsPath.line(to: CGPoint(x: 2.001, y: 5))
		insightsPath.curve(to: CGPoint(x: 3, y: 4), controlPoint1:CGPoint(x: 2.553, y: 5), controlPoint2:CGPoint(x: 3, y: 4.556))
		insightsPath.line(to: CGPoint(x: 3, y: 1))
		insightsPath.curve(to: CGPoint(x: 2.001, y: 0), controlPoint1:CGPoint(x: 3, y: 0.448), controlPoint2:CGPoint(x: 2.557, y: 0))
		insightsPath.line(to: CGPoint(x: 0.999, y: 0))
		insightsPath.curve(to: CGPoint(x: 0, y: 1), controlPoint1:CGPoint(x: 0.447, y: 0), controlPoint2:CGPoint(x: 0, y: 0.444))
		insightsPath.line(to: CGPoint(x: 0, y: 4))
		insightsPath.close()
		insightsPath.move(to: CGPoint(x: 5, y: 8.002))
		insightsPath.curve(to: CGPoint(x: 5.999, y: 9), controlPoint1:CGPoint(x: 5, y: 8.553), controlPoint2:CGPoint(x: 5.443, y: 9))
		insightsPath.line(to: CGPoint(x: 7.001, y: 9))
		insightsPath.curve(to: CGPoint(x: 8, y: 8.002), controlPoint1:CGPoint(x: 7.553, y: 9), controlPoint2:CGPoint(x: 8, y: 8.554))
		insightsPath.line(to: CGPoint(x: 8, y: 0.998))
		insightsPath.curve(to: CGPoint(x: 7.001, y: 0), controlPoint1:CGPoint(x: 8, y: 0.447), controlPoint2:CGPoint(x: 7.557, y: 0))
		insightsPath.line(to: CGPoint(x: 5.999, y: 0))
		insightsPath.curve(to: CGPoint(x: 5, y: 0.998), controlPoint1:CGPoint(x: 5.447, y: 0), controlPoint2:CGPoint(x: 5, y: 0.446))
		insightsPath.line(to: CGPoint(x: 5, y: 8.002))
		insightsPath.close()
		insightsPath.move(to: CGPoint(x: 10, y: 12.993))
		insightsPath.curve(to: CGPoint(x: 10.999, y: 14), controlPoint1:CGPoint(x: 10, y: 13.549), controlPoint2:CGPoint(x: 10.443, y: 14))
		insightsPath.line(to: CGPoint(x: 12.001, y: 14))
		insightsPath.curve(to: CGPoint(x: 13, y: 12.993), controlPoint1:CGPoint(x: 12.553, y: 14), controlPoint2:CGPoint(x: 13, y: 13.55))
		insightsPath.line(to: CGPoint(x: 13, y: 1.007))
		insightsPath.curve(to: CGPoint(x: 12.001, y: 0), controlPoint1:CGPoint(x: 13, y: 0.451), controlPoint2:CGPoint(x: 12.557, y: 0))
		insightsPath.line(to: CGPoint(x: 10.999, y: 0))
		insightsPath.curve(to: CGPoint(x: 10, y: 1.007), controlPoint1:CGPoint(x: 10.447, y: 0), controlPoint2:CGPoint(x: 10, y: 0.45))
		insightsPath.line(to: CGPoint(x: 10, y: 12.993))
		insightsPath.close()
		insightsPath.move(to: CGPoint(x: 10, y: 12.993))
		
		return insightsPath
	}
	
	func insights3Path() -> NSBezierPath{
		let insights3Path = NSBezierPath()
		insights3Path.move(to: CGPoint(x: 0, y: 4))
		insights3Path.curve(to: CGPoint(x: 0.999, y: 5), controlPoint1:CGPoint(x: 0, y: 4.552), controlPoint2:CGPoint(x: 0.443, y: 5))
		insights3Path.line(to: CGPoint(x: 2.001, y: 5))
		insights3Path.curve(to: CGPoint(x: 3, y: 4), controlPoint1:CGPoint(x: 2.553, y: 5), controlPoint2:CGPoint(x: 3, y: 4.556))
		insights3Path.line(to: CGPoint(x: 3, y: 1))
		insights3Path.curve(to: CGPoint(x: 2.001, y: 0), controlPoint1:CGPoint(x: 3, y: 0.448), controlPoint2:CGPoint(x: 2.557, y: 0))
		insights3Path.line(to: CGPoint(x: 0.999, y: 0))
		insights3Path.curve(to: CGPoint(x: 0, y: 1), controlPoint1:CGPoint(x: 0.447, y: 0), controlPoint2:CGPoint(x: 0, y: 0.444))
		insights3Path.line(to: CGPoint(x: 0, y: 4))
		insights3Path.close()
		insights3Path.move(to: CGPoint(x: 5, y: 8.002))
		insights3Path.curve(to: CGPoint(x: 5.999, y: 9), controlPoint1:CGPoint(x: 5, y: 8.553), controlPoint2:CGPoint(x: 5.443, y: 9))
		insights3Path.line(to: CGPoint(x: 7.001, y: 9))
		insights3Path.curve(to: CGPoint(x: 8, y: 8.002), controlPoint1:CGPoint(x: 7.553, y: 9), controlPoint2:CGPoint(x: 8, y: 8.554))
		insights3Path.line(to: CGPoint(x: 8, y: 0.998))
		insights3Path.curve(to: CGPoint(x: 7.001, y: 0), controlPoint1:CGPoint(x: 8, y: 0.447), controlPoint2:CGPoint(x: 7.557, y: 0))
		insights3Path.line(to: CGPoint(x: 5.999, y: 0))
		insights3Path.curve(to: CGPoint(x: 5, y: 0.998), controlPoint1:CGPoint(x: 5.447, y: 0), controlPoint2:CGPoint(x: 5, y: 0.446))
		insights3Path.line(to: CGPoint(x: 5, y: 8.002))
		insights3Path.close()
		insights3Path.move(to: CGPoint(x: 10, y: 12.993))
		insights3Path.curve(to: CGPoint(x: 10.999, y: 14), controlPoint1:CGPoint(x: 10, y: 13.549), controlPoint2:CGPoint(x: 10.443, y: 14))
		insights3Path.line(to: CGPoint(x: 12.001, y: 14))
		insights3Path.curve(to: CGPoint(x: 13, y: 12.993), controlPoint1:CGPoint(x: 12.553, y: 14), controlPoint2:CGPoint(x: 13, y: 13.55))
		insights3Path.line(to: CGPoint(x: 13, y: 1.007))
		insights3Path.curve(to: CGPoint(x: 12.001, y: 0), controlPoint1:CGPoint(x: 13, y: 0.451), controlPoint2:CGPoint(x: 12.557, y: 0))
		insights3Path.line(to: CGPoint(x: 10.999, y: 0))
		insights3Path.curve(to: CGPoint(x: 10, y: 1.007), controlPoint1:CGPoint(x: 10.447, y: 0), controlPoint2:CGPoint(x: 10, y: 0.45))
		insights3Path.line(to: CGPoint(x: 10, y: 12.993))
		insights3Path.close()
		insights3Path.move(to: CGPoint(x: 10, y: 12.993))
		
		return insights3Path
	}
	
	func insights2Path() -> NSBezierPath{
		let insights2Path = NSBezierPath()
		insights2Path.move(to: CGPoint(x: 0, y: 4))
		insights2Path.curve(to: CGPoint(x: 0.999, y: 5), controlPoint1:CGPoint(x: 0, y: 4.552), controlPoint2:CGPoint(x: 0.443, y: 5))
		insights2Path.line(to: CGPoint(x: 2.001, y: 5))
		insights2Path.curve(to: CGPoint(x: 3, y: 4), controlPoint1:CGPoint(x: 2.553, y: 5), controlPoint2:CGPoint(x: 3, y: 4.556))
		insights2Path.line(to: CGPoint(x: 3, y: 1))
		insights2Path.curve(to: CGPoint(x: 2.001, y: 0), controlPoint1:CGPoint(x: 3, y: 0.448), controlPoint2:CGPoint(x: 2.557, y: 0))
		insights2Path.line(to: CGPoint(x: 0.999, y: 0))
		insights2Path.curve(to: CGPoint(x: 0, y: 1), controlPoint1:CGPoint(x: 0.447, y: 0), controlPoint2:CGPoint(x: 0, y: 0.444))
		insights2Path.line(to: CGPoint(x: 0, y: 4))
		insights2Path.close()
		insights2Path.move(to: CGPoint(x: 5, y: 8.002))
		insights2Path.curve(to: CGPoint(x: 5.999, y: 9), controlPoint1:CGPoint(x: 5, y: 8.553), controlPoint2:CGPoint(x: 5.443, y: 9))
		insights2Path.line(to: CGPoint(x: 7.001, y: 9))
		insights2Path.curve(to: CGPoint(x: 8, y: 8.002), controlPoint1:CGPoint(x: 7.553, y: 9), controlPoint2:CGPoint(x: 8, y: 8.554))
		insights2Path.line(to: CGPoint(x: 8, y: 0.998))
		insights2Path.curve(to: CGPoint(x: 7.001, y: 0), controlPoint1:CGPoint(x: 8, y: 0.447), controlPoint2:CGPoint(x: 7.557, y: 0))
		insights2Path.line(to: CGPoint(x: 5.999, y: 0))
		insights2Path.curve(to: CGPoint(x: 5, y: 0.998), controlPoint1:CGPoint(x: 5.447, y: 0), controlPoint2:CGPoint(x: 5, y: 0.446))
		insights2Path.line(to: CGPoint(x: 5, y: 8.002))
		insights2Path.close()
		insights2Path.move(to: CGPoint(x: 10, y: 12.993))
		insights2Path.curve(to: CGPoint(x: 10.999, y: 14), controlPoint1:CGPoint(x: 10, y: 13.549), controlPoint2:CGPoint(x: 10.443, y: 14))
		insights2Path.line(to: CGPoint(x: 12.001, y: 14))
		insights2Path.curve(to: CGPoint(x: 13, y: 12.993), controlPoint1:CGPoint(x: 12.553, y: 14), controlPoint2:CGPoint(x: 13, y: 13.55))
		insights2Path.line(to: CGPoint(x: 13, y: 1.007))
		insights2Path.curve(to: CGPoint(x: 12.001, y: 0), controlPoint1:CGPoint(x: 13, y: 0.451), controlPoint2:CGPoint(x: 12.557, y: 0))
		insights2Path.line(to: CGPoint(x: 10.999, y: 0))
		insights2Path.curve(to: CGPoint(x: 10, y: 1.007), controlPoint1:CGPoint(x: 10.447, y: 0), controlPoint2:CGPoint(x: 10, y: 0.45))
		insights2Path.line(to: CGPoint(x: 10, y: 12.993))
		insights2Path.close()
		insights2Path.move(to: CGPoint(x: 10, y: 12.993))
		
		return insights2Path
	}
	
	
}
