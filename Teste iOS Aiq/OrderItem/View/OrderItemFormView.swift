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
    
    weak var controllerDelegate: OrderItemFormViewDelegate!
    
    lazy var formTitleView: OrderItemFormSummaryView = {
        let titleView = OrderItemFormSummaryView()
        titleView.translatesAutoresizingMaskIntoConstraints = false
        return titleView
    }()
    // TODO: Create separate UIView with HStack for this
    lazy var totalPriceLabel: UILabel = .init()
    lazy var formFieldsTableView: UITableView = .init()
    
    
    // MARK: Lifecycle methods
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .white
        
        setupHierarchy()
        
        setupConstraints()
    }
    
    // MARK: Private methods
    private func setupHierarchy() {
        self.addSubview(formTitleView)
    }
    
    private func setupConstraints() {
        let formTitleViewConstraints = [
            formTitleView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            formTitleView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            formTitleView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ]
        NSLayoutConstraint.activate(formTitleViewConstraints)
    }
}
