//
//  OrderItemFormFieldOption.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

struct OrderItemFormFieldOption: Codable {
    let title: String
    let price: Double?
    let isPromotional: Bool
    let promotionalPrice: Double?
    
    init(title: String, price: Double? = nil, isPromotional: Bool, promotionalPrice: Double? = nil) {
        self.title = title
        self.price = price
        self.isPromotional = isPromotional
        self.promotionalPrice = promotionalPrice
    }
}
