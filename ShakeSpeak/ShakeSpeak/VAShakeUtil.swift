//
//  VAShakeUtil.swift
//  ShakeSpeak
//
//  Created by A, Augustine on 9/13/17.
//  Copyright © 2017 A, Augustine. All rights reserved.
//

import UIKit

protocol VAShakeUtilDelegate {
    
    func deviceDidShaken()
}

class VAShakeUtil {
    
    fileprivate var delegate: VAShakeUtilDelegate?
    
    fileprivate static let shared: VAShakeUtil = VAShakeUtil()
    
    private init() { }
    
    class func registerForShakeEvent(delegate: VAShakeUtilDelegate) {
        
        VAShakeUtil.shared.delegate = delegate
    }
}

extension UIWindow {
    
    override open func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            VAShakeUtil.shared.delegate?.deviceDidShaken()
        }
    }

}
