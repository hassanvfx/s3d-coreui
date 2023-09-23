import UIKit
import SwiftUI

public struct Style {
    public var padding=8
    public var cornerRadius=12
    public var lightPalette=Palette(background: .white)
    public var darkPalette=Palette(background:.black)
    public init(padding: Int = 8, cornerRadius: Int = 12, lightPalette: Palette = Palette(background: .white), darkPalette: Palette = Palette(background:.black)) {
        self.padding = padding
        self.cornerRadius = cornerRadius
        self.lightPalette = lightPalette
        self.darkPalette = darkPalette
    }
    public var palette:Palette{
        isDarkMode ? darkPalette : lightPalette
    }
}

public struct Palette{
    public var background=Color.white
    public var primary=Color(UIColor.purple)
    public var secondary=Color(UIColor.red)
    public var tertiary=Color(UIColor.green)
    public init(background: SwiftUI.Color = Color.white, primary: Color = Color(UIColor.purple), secondary: Color = Color(UIColor.red), tertiary: Color = Color(UIColor.green)) {
        self.background = background
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
    }
}
extension Style {
    public static var spec = Style()
}
extension Style {
    public var isDarkMode: Bool {
        if let window = UIApplication.shared.windows.first {
                return window.traitCollection.userInterfaceStyle == .dark
        }
        return false
    }
}
