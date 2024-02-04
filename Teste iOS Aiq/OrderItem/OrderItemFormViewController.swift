//
//  OrderItemFormView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

import UIKit

class OrderItemFormViewController: UIViewController {

    lazy var label: UILabel = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        
        label.text = "Hello, World!"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .gray
        label.backgroundColor = .black
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label)
        
        let constraints = [
            label.widthAnchor.constraint(equalToConstant: 150),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            label.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
        ]
        NSLayoutConstraint.activate(constraints)
        
        print("\(Double.random(in: (0...100.0)).priceDescription) success")
    }

}
