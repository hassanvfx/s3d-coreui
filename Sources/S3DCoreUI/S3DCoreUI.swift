import UIKit
import SwiftUI

public struct Style {
    public var padding=8
    public var cornerRadius=12
    public var lightPalette=Palette(background: .white)
    public var darkPalette=Palette(background:.black)
    public var palette:Palette{
        isDarkMode ? darkPalette : lightPalette
    }
}

public struct Palette{
    public var background=Color.white
    public var primary=Color(UIColor.purple)
    public var secondary=Color(UIColor.red)
    public var tertiary=Color(UIColor.green)
}

extension Style {
    public var isDarkMode: Bool {
        if let window = UIApplication.shared.windows.first {
                return window.traitCollection.userInterfaceStyle == .dark
        }
        return false
    }
}
