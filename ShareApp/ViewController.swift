//
//  ViewController.swift
//  ShareApp
//
//  Created by John Lima on 09/09/16.
//  Copyright © 2016 limadeveloper All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var activity: UIActivityViewController?
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        self.activity?.dismissViewControllerAnimated(false, completion: nil)
    }
    
    // MARK: Actions
    private func updateUI() {
        
        let button = UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: #selector(self.share))
        button.tintColor = UIColor.redColor()
        
        self.navigationItem.rightBarButtonItem = button
    }
    
    @objc private func share() {
        
        let url = "https://developer.apple.com/"
        let text = "Apple Developer \n\(url)"
        let image = UIImage(named: Images.IMG_01.rawValue)!
        
        let objects = [text, image]
        
        self.activity = UIActivityViewController(activityItems: objects, applicationActivities: nil)
        
        self.activity?.popoverPresentationController?.sourceView = self.view
        
        let x = self.view.frame.size.width/2
        let y = self.view.frame.size.height/2.8
        let width = CGFloat(0)
        let height = width
        
        self.activity?.popoverPresentationController?.sourceRect = CGRect(x: x, y: y, width: width, height: height)
        self.activity?.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
        
        if self.activity != nil {
            self.presentViewController(self.activity!, animated: true, completion: nil)
        }
        
    }
    
}

