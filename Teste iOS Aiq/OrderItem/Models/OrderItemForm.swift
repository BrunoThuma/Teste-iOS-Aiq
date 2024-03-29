//
//  OrderItemForm.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

import UIKit

struct OrderItemForm: Codable {
    let id: Int
    let title: String
    let description: String
    let initialPrice: Double
    let itemImageName: String
    let formFields: [OrderItemFormField]
}
