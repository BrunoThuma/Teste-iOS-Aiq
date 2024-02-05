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
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    lazy var formTitleView: OrderItemFormSummaryView = {
        let titleView = OrderItemFormSummaryView()
        titleView.translatesAutoresizingMaskIntoConstraints = false
        return titleView
    }()
    lazy var quantityView: OrderItemFormQuantityView = {
        let quantityView = OrderItemFormQuantityView()
        quantityView.translatesAutoresizingMaskIntoConstraints = false
        return quantityView
    }()
    lazy var formFieldsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "FormCell")
        tableView.isScrollEnabled = false
        return tableView
    }()
    
    
    // MARK: Lifecycle methods
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .white
        
        setupHierarchy()
        
        setupConstraints()
        
//        self.addSubview(formFieldsTableView)
//        
//        setupOnlyTableViewContraints()
    }
    
    // MARK: Private methods
    private func setupHierarchy() {
        self.addSubview(scrollView)
        scrollView.addSubview(formTitleView)
        scrollView.addSubview(quantityView)
        scrollView.addSubview(formFieldsTableView)
    }
    
    private func setupConstraints() {
        let scrollViewContraints = [
            scrollView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor),
            scrollView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            scrollView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor),
        ]
        NSLayoutConstraint.activate(scrollViewContraints)
        
        let formTitleViewConstraints = [
            formTitleView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            formTitleView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            formTitleView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            formTitleView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
        ]
        NSLayoutConstraint.activate(formTitleViewConstraints)
        
        let quantityViewConstraints = [
            quantityView.topAnchor.constraint(equalTo: formTitleView.bottomAnchor, constant: AiqConstraints.OrderItemForm.Top.standard),
            quantityView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            quantityView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            quantityView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
        ]
        NSLayoutConstraint.activate(quantityViewConstraints)
        
        let tableViewConstraints = [
            formFieldsTableView.topAnchor.constraint(equalTo: quantityView.bottomAnchor, constant: AiqConstraints.OrderItemForm.Top.standard),
            formFieldsTableView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            formFieldsTableView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            formFieldsTableView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ]
        NSLayoutConstraint.activate(tableViewConstraints)
    }
    
    private func setupOnlyTableViewContraints() {
        let tableViewConstraints = [
            formFieldsTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: AiqConstraints.OrderItemForm.Top.standard),
            formFieldsTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            formFieldsTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            formFieldsTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ]
        NSLayoutConstraint.activate(tableViewConstraints)
    }
}
