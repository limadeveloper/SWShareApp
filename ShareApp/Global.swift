//
//  Global.swift
//  ShareApp
//
//  Created by John Lima on 12/09/16.
//  Copyright © 2016 limadeveloper All rights reserved.
//

import UIKit

class Global {
    
    class func getDeviceOrientation() -> RotateType? {
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        return appDelegate?.deviceOrientation
    }
    
}