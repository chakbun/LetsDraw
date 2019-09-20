//
//  ViewController.swift
//  letsdraw
//
//  Created by jaben on 2019/9/20.
//  Copyright © 2019 Jaben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pan = UIPanGestureRecognizer.init(target: self.canvasView, action: #selector(panActionWith(gesture:)))
        pan.maximumNumberOfTouches = 1
        self.canvasView.addGestureRecognizer(pan)
    }
    
    @objc func panActionWith(gesture: UIPanGestureRecognizer) -> Void {}
}

