//
//  SingleChoiceCell.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 05/02/24.
//

import UIKit

class SingleChoiceCell: UITableViewCell {
    private let customizationFonts = AiqFonts.OrderItemForm.Customization.self
    private let customizationColors = UIColor.AiqColors.OrderItemForm.Customization.self
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = customizationFonts.cellTitleBold16
        label.textColor = customizationColors.titleTintBlack
        return label
    }()
    
    func configure(with item: OrderItemFormField) {
        titleLabel.text = item.title
    }
}
