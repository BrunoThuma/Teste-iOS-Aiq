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
    
    func getFormInfo() -> OrderItemForm
    func getFormTableData() -> [OrderItemFormField]
}

protocol OrderItemFormVMDelegate: AnyObject {
    func didGetForm()
    func didGetError(error: String)
}

class MockedOrderItemVM: OrderItemVMProtocol {
    var form: OrderItemForm?
    weak var controllerDelegate: OrderItemFormVMDelegate!
    
    // TODO: Should throw
    func getFormInfo() -> OrderItemForm {
        if let form {
            return form
        } else {
            loadForm()
            return form!
        }
    }
    
    // TODO: Should throw
    func getFormTableData() -> [OrderItemFormField] {
        if let form {
            return form.formFields
        } else {
            loadForm()
            return form!.formFields
        }
    }
    
    // TODO: Should throw
    func loadForm() {
        self.form = OrderItemForm(
            id: 1,
            title: "Ceviche de salmão",
            description: "salmão temperado com limão, cebola e pimenta",
            initialPrice: 19.90,
            totalPrice: nil,
            itemImage: UIImage(named: "Ceviche.png")!,
            formFields: [
                OrderItemFormField(
                    type: .singleChoice,
                    title: "qual o tamanho?",
                    description: "escolha 1",
                    options: [
                        OrderItemFormFieldOption(
                            title: "médio",
                            price: 22.90,
                            isPromotional: true,
                            promotionalPrice: 19.90
                        ),
                        OrderItemFormFieldOption(
                            title: "grade",
                            price: 28.90,
                            isPromotional: false
                        ),
                    ]),
                OrderItemFormField(
                    type: .multipleItems,
                    title: "vai querer bebida?",
                    description: "escolha quantos quiser",
                    options: [
                        OrderItemFormFieldOption(
                            title: "coca-cola",
                            price: 5,
                            isPromotional: false
                        ),
                        OrderItemFormFieldOption(
                            title: "suco prats laranja",
                            price: 6,
                            isPromotional: false
                        ),
                        OrderItemFormFieldOption(
                            title: "água sem gás",
                            price: 3,
                            isPromotional: false
                        ),
                    ]),
                OrderItemFormField(
                    type: .singleChoice,
                    title: "precisa de talher?",
                    description: "escolha até 1",
                    options: [
                        OrderItemFormFieldOption(
                            title: "hashi",
                            isPromotional: false
                        ),
                        OrderItemFormFieldOption(
                            title: "garfo e faca descartável",
                            price: 1,
                            isPromotional: false
                        ),
                    ]),
                OrderItemFormField(
                    type: .multipleChoice,
                    title: "mais alguma coisa?",
                    description: "escolha até 2",
                    options: [
                        OrderItemFormFieldOption(
                            title: "biscoito da sorte",
                            price: 2,
                            isPromotional: false
                        ),
                        OrderItemFormFieldOption(
                            title: "rolinho primavera",
                            price: 8,
                            isPromotional: false
                        )
                    ]),
            ])
        
        controllerDelegate.didGetForm()
    }
}
