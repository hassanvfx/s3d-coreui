//
//  File.swift
//  
//
//  Created by Eon Fluxor on 9/23/23.
//

import UIKit
import SwiftUI
public extension UIColor {
     var contrastForeground: UIColor {
        // Get the components of the color (RGB)
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        // Calculate the luminance of the color
        let luminance = (0.299 * red + 0.587 * green + 0.114 * blue)
        
        // Choose white or black based on luminance
        if luminance > 0.5 {
            return UIColor.black
        } else {
            return UIColor.white
        }
    }
}
public extension Color{
     var contrastForeground:Color{
        Color(UIColor(self).contrastForeground)
    }
}


public extension UIApplication {
    var rootViewController: UIViewController? {
        return windows.first?.rootViewController
    }
}

extension UIApplication {
    public static func presentAlert(title: String, message: String) {
        guard let rootViewController = UIApplication.shared.rootViewController else {
            return
        }
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        rootViewController.present(alertController, animated: true, completion: nil)
    }
}
