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
    
    struct AiqColors {
        static let formNavBarBgPurple: UIColor = .init(red: 88, green: 15, blue: 120)
        
        static let formTitlesTintBlack: UIColor = .init(red: 57, green: 58, blue: 60)
        static let formDescriptionsTintGray: UIColor = .init(red: 109, green: 111, blue: 115)
        static let formBlockedChangeQuantityBgGray: UIColor = .init(red: 109, green: 111, blue: 115)
        static let formChangeQuantityButtonsGreen: UIColor = .init(red: 0, green: 162, blue: 150)
        
        static let formFieldPricesTintPurple: UIColor = .init(red: 123, green: 31, blue: 162)
        static let formPromosGreen: UIColor = .init(red: 2, green: 161, blue: 23)
        static let formRequiredFieldBgBlack: UIColor = .init(red: 57, green: 58, blue: 60)
        
        static let formFieldOptionTitleTintGray: UIColor = .init(red: 109, green: 111, blue: 115)
        static let formFieldOptionSelected: UIColor = .init(red: 0, green: 162, blue: 150)
        
        static let formObservationsTextFieldBorderGray: UIColor = .init(red: 205, green: 209, blue: 217)
        
        static let formFooterBgPurple: UIColor = .init(red: 238, green: 240, blue: 245)
        static let formFooterLabelTintPurple: UIColor = .init(red: 88, green: 15, blue: 120)
        static let formFooterFinishButton: UIColor = .init(red: 123, green: 31, blue: 162)
        
    }
}
