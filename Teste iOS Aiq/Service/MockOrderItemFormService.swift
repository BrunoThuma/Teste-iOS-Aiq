//
//  MockOrderItemFormService.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 05/02/24.
//

import Foundation

final class MockOrderItemFormService: OrderItemFormServiceProtocol {
    func fetchForm(completion: @escaping (Result<OrderItemForm, Error>) -> Void) {
        if let path = Bundle.main.path(forResource: "MockFormJson", ofType: "json") {
            do {
                let url = URL(fileURLWithPath: path)
                let jsonData = try Data(contentsOf: url, options: .mappedIfSafe)
                let form = try! JSONDecoder().decode(OrderItemForm.self, from: jsonData)
                completion(.success(form))
            }  catch (let error){
                print("Could Not Fetch data from MockFormJson.json, error: \(error.localizedDescription)")
            }
        } else {
            print("Could not find file")
        }
    }
}
