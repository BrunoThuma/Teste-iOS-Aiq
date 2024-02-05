//
//  Colors.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 04/02/24.
//

import UIKit

extension UIColor{
    convenience init(red: Int, green: Int, blue: Int) {
        /// 8-bit rgb initializer with alpha set to 100%
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1)
    }
    
    private enum FigmaColors {
        static let neutrals0white = UIColor(red: 255, green: 255, blue: 255)
        static let purple700Text = UIColor(red: 88, green: 15, blue: 120)
        static let purple500Brand = UIColor(red: 123, green: 31, blue: 162)
        static let purple200Light = UIColor(red: 238, green: 207, blue: 252)
        static let neutrals700TextMedium = UIColor(red: 57, green: 58, blue: 60)
        static let neutrals500TextSecondary = UIColor(red: 109, green: 111, blue: 115)
        static let green500Success = UIColor(red: 2, green: 161, blue: 23)
        static let teal400Brand = UIColor(red: 0, green: 162, blue: 150)
    }
    
    enum AiqColors {
        enum OrderItemForm {
            enum Header {
                static let backgroundPurple = FigmaColors.purple500Brand
            }
            enum Summary {
                static let titleTintBlack = FigmaColors.neutrals700TextMedium
                static let initialPriceTintGray = FigmaColors.neutrals500TextSecondary
                static let initialPriceValueTintPurple = FigmaColors.purple500Brand
                static let descriptionTintGray = FigmaColors.neutrals500TextSecondary
            }
        }
    }
}
