//
//  OrderItemFormField.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

struct OrderItemFormField {
    let type: OrderItemFormFieldType
    let title: String
    let description: String
    let options: [OrderItemFormFieldOption]
}

enum OrderItemFormFieldType {
    case singleChoice
    case multipleChoice
    case multipleItems
}
