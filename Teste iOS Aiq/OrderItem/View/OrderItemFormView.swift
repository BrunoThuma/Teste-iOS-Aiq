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
    
    // MARK: UI attributes
    lazy var itemImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "noImage.png"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Oi mundo"
        label.font = .AiqFonts.formTitleBold20
        label.textColor = .AiqColors.formTitlesTintBlack
        label.textAlignment = .left
        return label
    }()
    lazy var initialPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "a partir de"
        label.font = .AiqFonts.formInitialPriceExtraBold14
        label.textColor = .AiqColors.formDescriptionsTintGray
        return label
    }()
    lazy var initialPriceValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = .AiqFonts.formInitialPriceExtraBold18
        label.textColor = .AiqColors.formFieldPricesTintPurple
        label.textAlignment = .left
        return initialPriceLabel
    }()
    lazy var initialPriceStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis  = .horizontal
        stack.distribution  = .fillEqually
        // center the arranged subviews vertically
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
    lazy var descriptionLabel: UILabel = .init()
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
        self.addSubview(itemImageView)
        self.addSubview(titleLabel)
        initialPriceStack.addArrangedSubview(initialPriceLabel)
        initialPriceStack.addArrangedSubview(initialPriceValueLabel)
        self.addSubview(initialPriceStack)
        
    }
    
    private func setupConstraints() {
        
        let itemImageViewConstraints = [
            itemImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            itemImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            itemImageView.heightAnchor.constraint(equalToConstant: 195),
            itemImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ]
        NSLayoutConstraint.activate(itemImageViewConstraints)
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16), 
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ]
        NSLayoutConstraint.activate(titleLabelConstraints)
        
        
//        let initialPriceLabelConstraints = [
//            initialPriceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 9),
//            initialPriceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
//            initialPriceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//        ]
//        NSLayoutConstraint.activate(initialPriceLabelConstraints)
        
        let initialPriceStackConstraints = [
            initialPriceStack.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            initialPriceStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            initialPriceStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(initialPriceStackConstraints)
    }
}
