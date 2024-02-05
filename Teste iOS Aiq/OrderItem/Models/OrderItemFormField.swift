//
//  OrderItemFormField.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

struct OrderItemFormField: Codable {
    let type: OrderItemFormFieldType
    let title: String
    let description: String
    let isRequired: Bool
    let options: [OrderItemFormFieldOption]
}

enum OrderItemFormFieldType: Int, Codable {
    case singleChoice = 1
    case multipleChoice
    case multipleItems
}
