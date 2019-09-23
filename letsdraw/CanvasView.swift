//
//  CanvasView.swift
//  letsdraw
//
//  Created by jaben on 2019/9/20.
//  Copyright © 2019 Jaben. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    var drawPath: UIBezierPath?
    var drawLayer: CAShapeLayer?
}

extension CanvasView {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if event?.allTouches?.count == 1 {
            let point = (touches.first?.location(in: self))!
            self.drawPath = UIBezierPath.init()
            self.drawPath?.lineWidth = 2.0
            self.drawPath?.move(to: point)
            
            if let path = self.drawPath {
                let shape = CAShapeLayer.init()
                shape.path = path.cgPath
                shape.backgroundColor = UIColor.clear.cgColor
                shape.fillColor = UIColor.clear.cgColor
                shape.lineCap = .round
                shape.lineJoin = .round
                shape.strokeColor = UIColor.red.cgColor
                shape.lineWidth = 2.0
                self.layer.addSublayer(shape)
                drawLayer = shape;
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if event?.allTouches?.count == 1 {
            let point = (touches.first?.location(in: self))!
            drawPath?.addLine(to: point)
            drawLayer?.path = drawPath?.cgPath
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
