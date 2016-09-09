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
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
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
        
        let activity = UIActivityViewController(activityItems: objects, applicationActivities: nil)
        activity.popoverPresentationController?.sourceView = self.view
        activity.popoverPresentationController?.sourceRect = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: 0, height: 0)
        activity.popoverPresentationController?.permittedArrowDirections = .Any
        
        self.presentViewController(activity, animated: true, completion: nil)
    }
}

