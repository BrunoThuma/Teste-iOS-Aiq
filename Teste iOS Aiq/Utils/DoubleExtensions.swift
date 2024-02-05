//
//  DoubleExtensions.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

extension Double {
    var priceDescription: String {
        get {
            String(format: "R$ %.02f", self).replacingOccurrences(of: ".", with: ",")
        }
    }
}
