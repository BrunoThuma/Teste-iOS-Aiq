//
//  OrderItemFormTitleView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 05/02/24.
//

import UIKit

class OrderItemFormTitleView: UIView {
    
    private let summaryColors = UIColor.AiqColors.OrderItemForm.Summary.self

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
        label.font = .AiqFonts.formTitleBold20
        label.textColor = summaryColors.titleTintBlack
        label.textAlignment = .left
        return label
    }()
    lazy var initialPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "a partir de"
        label.font = .AiqFonts.formInitialPriceExtraBold14
        label.textColor = summaryColors.initialPriceTintGray
        return label
    }()
    lazy var initialPriceValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .AiqFonts.formInitialPriceExtraBold18
        label.textColor = summaryColors.initialPriceValueTintPurple
        label.textAlignment = .left
        return label
    }()
    lazy var initialPriceStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis  = .horizontal
        stack.alignment = .bottom
        stack.spacing = 10
        return stack
    }()
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = AiqFonts.OrderItemForm.Summary.description14
        label.textColor = summaryColors.descriptionTintGray
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupHierarchy()
        
        setupConstraints()
    }
    
    private func setupHierarchy() {
        self.addSubview(itemImageView)
        self.addSubview(titleLabel)
        initialPriceStack.addArrangedSubview(initialPriceLabel)
        initialPriceStack.addArrangedSubview(initialPriceValueLabel)
        self.addSubview(initialPriceStack)
        self.addSubview(descriptionLabel)
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
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: AiqConstraints.Leading.standard),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: AiqConstraints.Trailing.standard),
        ]
        NSLayoutConstraint.activate(titleLabelConstraints)
        
        let initialPriceStackConstraints = [
            initialPriceStack.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            initialPriceStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: AiqConstraints.Leading.standard),
        ]
        NSLayoutConstraint.activate(initialPriceStackConstraints)
        
        let descriptionLabelConstraints = [
            descriptionLabel.topAnchor.constraint(equalTo: initialPriceStack.bottomAnchor, constant: 6),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: AiqConstraints.Leading.standard),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: AiqConstraints.Trailing.standard),
        ]
        NSLayoutConstraint.activate(descriptionLabelConstraints)
    }

}
