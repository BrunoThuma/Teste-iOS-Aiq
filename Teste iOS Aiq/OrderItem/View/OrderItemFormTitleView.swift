//
//  OrderItemFormTitleView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 05/02/24.
//

import UIKit

class OrderItemFormTitleView: UIView {
    private let headerFonts = AiqFonts.OrderItemForm.Header.self
    private let headerColors = UIColor.AiqColors.OrderItemForm.Header.self
    
    lazy var deliverToLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = headerFonts.deliverToBold14
        label.textColor = headerColors.deliverToTintPurple
        label.text = "entregando em"
        return label
    }()
    lazy var addressLabel: UILabel = {
        let label = UILabel()
        let image = UIImage(systemName: "chevron.right")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        let imageAttachment = NSTextAttachment(image: image!)
        imageAttachment.bounds = CGRect(x: 0, y: 0, width: 6, height: 10)
        
        let attributedText = NSMutableAttributedString(string: "Teste ")
        attributedText.append(NSAttributedString(attachment: imageAttachment))
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = headerFonts.addressBold16
        label.textColor = .white
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .AiqColors.OrderItemForm.Header.backgroundPurple
        
        setupHierarchy()
        
        setupConstraints()
    }
    
    func setupHierarchy() {
        self.addSubview(deliverToLabel)
        self.addSubview(addressLabel)
        
    }
    
    func setupConstraints() {
        let deliverToConstraints = [
            deliverToLabel.topAnchor.constraint(equalTo: self.topAnchor),
            deliverToLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            deliverToLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ]
        NSLayoutConstraint.activate(deliverToConstraints)
        
        let addressConstraints = [
            addressLabel.topAnchor.constraint(equalTo: deliverToLabel.bottomAnchor),
            addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ]
        NSLayoutConstraint.activate(addressConstraints)
    }

}
