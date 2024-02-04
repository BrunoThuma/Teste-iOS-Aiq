//
//  DoubleExtensions.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

extension Double {
    var priceDescription: String {
        get {
            "R$ " + self.description.replacingOccurrences(of: ".", with: ",")
        }
    }
}
