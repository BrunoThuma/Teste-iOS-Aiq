//
//  OrderItemFormServiceProtocol.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 05/02/24.
//

protocol OrderItemFormServiceProtocol {
    func fetchForm(completion: @escaping (Result<OrderItemForm, Error>) -> Void)
}

