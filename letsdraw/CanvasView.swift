//
//  CanvasView.swift
//  letsdraw
//
//  Created by jaben on 2019/9/20.
//  Copyright © 2019 Jaben. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    var points: [CGPoint] = []
    
    override func draw(_ rect: CGRect) {
        if points.count > 0 {
            let context = UIGraphicsGetCurrentContext()
            for (index, point) in points.enumerated() {
                if index == 0 {
                    context?.move(to: point)
                }else {
                    context?.addLine(to: point)
                }
            }
            UIColor.red.set()
            context?.setLineWidth(1.0)
            context?.strokePath()
        }
    }

    @objc func panActionWith(gesture: UIPanGestureRecognizer) -> Void {
//        let point = gesture.translation(in: self)
//        self.points.append(point)
//        self.setNeedsDisplay()
    }
    
}
