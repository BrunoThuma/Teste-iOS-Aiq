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
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Oi mundo"
        titleLabel.font = .AiqFonts.formTitle
        titleLabel.textColor = .AiqColors.formTitlesTintBlack
        titleLabel.textAlignment = .left
        return titleLabel
    }()
    lazy var originalPriceLabel: UILabel = .init()
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
        
        
    }
}
