//
//  ViewController.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

import UIKit

class TesteiOSAiqFlowController {
    private var navigationController: UINavigationController?
    
    public init() { }
    
    func start() -> UINavigationController? {
        self.navigationController = UINavigationController(rootViewController: OrderItemFormViewController(viewModel: MockedOrderItemVM()))
        return self.navigationController
    }

}

