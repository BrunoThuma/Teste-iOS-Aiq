//
//  OrderItemFormView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 04/02/24.
//

import UIKit

protocol OrderItemFormViewDelegate: AnyObject {
    
}

class OrderItemFormView: UIView {
    
    lazy var label: UILabel = .init()
    weak var controllerDelegate: OrderItemFormViewDelegate!

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .AiqColors.formNavBarBgPurple
        
        label.text = "Oi mundo!"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .AiqColors.formPromosGreen
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