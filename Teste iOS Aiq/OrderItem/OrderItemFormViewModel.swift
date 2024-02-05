//
//  OrderItemFormViewModel.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

import UIKit

protocol OrderItemVMProtocol: AnyObject {
    /// Talvez nao seja o melhor jeito de disponibilizar o dado para a VC
    /// Talvez guardar infos do form e dados da lista separados?
    var form: OrderItemForm? { get }
    var controllerDelegate: OrderItemFormVMDelegate! { get set }
    
    func loadModel()
}

protocol OrderItemFormVMDelegate: AnyObject {
    func didGetForm()
    func didGetError(error: String)
}

class MockedOrderItemVM: OrderItemVMProtocol {
    var form: OrderItemForm?
    weak var controllerDelegate: OrderItemFormVMDelegate!
    
    var service: OrderItemFormServiceProtocol
    
    init(service: OrderItemFormServiceProtocol) {
        self.service = service
    }
    
    // TODO: Should throw
    func loadModel() {
        service.fetchForm(completion: handleResult)
    }
    
    // TODO: Should throw
    func handleResult(_ result: Result<OrderItemForm, Error>) {
        switch result {
        case .success(let orderForm):
            self.form = orderForm
            controllerDelegate.didGetForm()
        case .failure(let error):
            controllerDelegate.didGetError(error: error.localizedDescription)
        }
    }
}
