//
//  File.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 04/02/24.
//

import UIKit

extension UIFont {
    struct AiqFonts {
        static let formTitleBold20 = UIFont(name: "Nunito-Bold", size: 20)
        static let formInitialPriceExtraBold14 = UIFont(name: "Nunito-Extrabold", size: 14)
        static let formInitialPriceExtraBold18 = UIFont(name: "Nunito-Extrabold", size: 18)
    }
}

enum AiqFonts {
    enum OrderItemForm {
        enum Summary {
            static let titleBold20 = UIFont(name: "Nunito-Bold", size: 20)
            static let priceExtraBold14 = UIFont(name: "Nunito-Extrabold", size: 14)
            static let priceExtraBold18 = UIFont(name: "Nunito-Extrabold", size: 18)
            static let description14 = UIFont(name: "Nunito", size: 14)
        }
        enum Customization {
            
        }
    }
}
