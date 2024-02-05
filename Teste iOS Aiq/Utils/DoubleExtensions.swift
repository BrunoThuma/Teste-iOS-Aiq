//
//  DoubleExtensions.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//
///  Reference: stackoverflow.com/questions/41558832/how-to-format-a-double-into-currency-swift-3

extension Double {
    var priceDescription: String {
        get {
            String(format: "R$ %.02f", self).replacingOccurrences(of: ".", with: ",")
        }
    }
}
