//
//  OrderItemFormFieldOption.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

struct OrderItemFormFieldOption {
    let title: String
    let price: Double?
    let isPromotional: Bool
    let promotionalPrice: Double?
    let quantity: Int?
    
    init(title: String, price: Double? = nil, isPromotional: Bool, promotionalPrice: Double? = nil, quantity: Int? = nil) {
        self.title = title
        self.price = price
        self.isPromotional = isPromotional
        self.promotionalPrice = promotionalPrice
        self.quantity = quantity
    }
}
