//
//  OrderItemFormView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 04/02/24.
//

import UIKit

class OrderItemFormView: UIView {
    
    lazy var label: UILabel = .init()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .purple
        
        label.text = "Hello, World!"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .gray
        label.backgroundColor = .black
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(label)
        
        let constraints = [
            label.widthAnchor.constraint(equalToConstant: 150),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}
