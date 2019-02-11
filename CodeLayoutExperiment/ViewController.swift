//
//  ViewController.swift
//  CodeLayoutExperiment
//
//  Created by Brock Gibson on 2/11/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {
    
    weak var square: UIView!
    
    let button = UIButton(type: .custom)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        //        https://stackoverflow.com/questions/47800210/when-should-translatesautoresizingmaskintoconstraints-be-set-to-true
        
        // this line messsed with me for a bit
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        view.backgroundColor = .gray
        
        let constraintWidth = NSLayoutConstraint(item: button,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1.0,
                                                 constant: 200.0)
        
        let constraintX = NSLayoutConstraint(item: button,
                                             attribute: .centerX,
                                             relatedBy: .equal,
                                             toItem: view,
                                             attribute: .centerX,
                                             multiplier: 1.0,
                                             constant: 0.0)
        
        let constraintY = NSLayoutConstraint(item: button,
                                             attribute: .centerY,
                                             relatedBy: .equal,
                                             toItem: view,
                                             attribute: .centerY,
                                             multiplier: 1.0,
                                             constant: 0.0)
        
        view.addConstraint(constraintWidth)
        view.addConstraint(constraintX)
        view.addConstraint(constraintY)

        
        // Get the superview's layout
//        let margins = view.layoutMarginsGuide
        
//        let square = UIView()
//        self.view.addSubview(square)
 
// https://theswiftdev.com/2017/10/31/ios-auto-layout-tutorial-programmatically/
// https://cocoacasts.com/working-with-auto-layout-in-code
        
//        square.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addConstraints([
//            NSLayoutConstraint(item: square, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 256),
//            NSLayoutConstraint(item: square, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0),
//            NSLayoutConstraint(item: square, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0),
//            ])
//
//        self.square = square
//        // Pin the leading edge of myView to the margin's leading edge
//        self.square.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//
//        // Pin the trailing edge of myView to the margin's trailing edge
//        self.square.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
//
//        self.square.backgroundColor = .red
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }

}

