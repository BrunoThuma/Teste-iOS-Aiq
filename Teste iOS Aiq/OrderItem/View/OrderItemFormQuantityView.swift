//
//  OrderItemFormQuantityView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 05/02/24.
//

import UIKit

class OrderItemFormQuantityView: UIView {
    
    private let quantityColors = UIColor.AiqColors.OrderItemForm.Quantity.self
    private let quantityFonts = AiqFonts.OrderItemForm.Quantity.self
    
    lazy var howManyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = quantityFonts.howManyBold16
        label.textColor = quantityColors.howManyTintBlack
        label.text = "quantos?"
        return label
    }()
    lazy var totalPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = quantityFonts.totalPriceSemiBold14
        label.textColor = quantityColors.totalPriceTintGray
        return label
    }()
    lazy var totalValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = quantityFonts.totalValueBold14
        label.textColor = quantityColors.totalValueTintBlack
        return label
    }()
    lazy var totalPriceLabelsHStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .bottom
        stack.spacing = 4
        return stack
    }()
    lazy var totalPriceHowManyVStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.spacing = 6
        return stack
    }()
    lazy var blockedButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentEdgeInsets = UIEdgeInsets(top: 11, left: 24, bottom: 10, right: 24)
        button.setTitle("adicionar", for: .normal)
        button.titleLabel?.font = quantityFonts.blockedBold14
        button.tintColor = .white
        button.backgroundColor = quantityColors.blockedBgGray
        button.layer.cornerRadius = 8
        button.isUserInteractionEnabled = false
        return button
    }()
    lazy var totalPriceQuantityHStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .equalSpacing
        stack.axis = .horizontal
        stack.alignment = .center
        return stack
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupHierarchy()
        
        setupConstraints()
    }
    
    private func setupHierarchy() {
        totalPriceHowManyVStack.addArrangedSubview(howManyLabel)
        totalPriceQuantityHStack.addArrangedSubview(totalPriceHowManyVStack)
        totalPriceQuantityHStack.addArrangedSubview(blockedButton)
        self.addSubview(totalPriceQuantityHStack)
    }
    
    private func setupConstraints() {
        let quantityHStackConstraints = [
            totalPriceQuantityHStack.topAnchor.constraint(equalTo: self.topAnchor),
            totalPriceQuantityHStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: AiqConstraints.OrderItemForm.Leading.standard),
            totalPriceQuantityHStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: AiqConstraints.OrderItemForm.Trailing.standard),
        ]
        NSLayoutConstraint.activate(quantityHStackConstraints)
    }

}
