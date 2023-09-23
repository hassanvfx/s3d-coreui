//
//  File.swift
//  
//
//  Created by Eon Fluxor on 9/23/23.
//

import UIKit
import SwiftUI
extension UIColor {
    public var contrastForeground: UIColor {
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
extension Color{
    public var contrastForeground:Color{
        Color(UIColor(self).contrastForeground)
    }
}
