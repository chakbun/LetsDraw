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
}

extension CanvasView {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let point = (touches.first?.location(in: self))!
        self.points.append(point)
        self.setNeedsDisplay()
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.points.removeAll()
    }
}
