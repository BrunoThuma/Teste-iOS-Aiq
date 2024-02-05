//
//  OrderItemFormView.swift
//  Teste iOS Aiq
//
//  Created by Bruno Thuma on 03/02/24.
//

import UIKit

class OrderItemFormViewController: UIViewController {
    
    let viewModel: OrderItemVMProtocol
    
    init(viewModel: OrderItemVMProtocol) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
        
        viewModel.controllerDelegate = self
        
        viewModel.loadModel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = OrderItemFormView()
        guard let view = view as? OrderItemFormView else { return }
        
        view.formTitleView.titleLabel.text = viewModel.form?.title
        view.formTitleView.itemImageView.image = viewModel.form?.itemImage
        view.formTitleView.initialPriceValueLabel.text = viewModel.form?.initialPrice.priceDescription
        view.formTitleView.descriptionLabel.text = viewModel.form?.description
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(Double.random(in: (0...1000.0)).priceDescription) success")
    }

}

extension OrderItemFormViewController: OrderItemFormVMDelegate {
    
    func didGetForm() {
        print("Got form")
    }
    
    func didGetError(error: String) {
        print("Got error")
    }
}

extension OrderItemFormViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.form!.formFields.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let formField = self.viewModel.form!.formFields[indexPath.row]
        cell.textLabel!.text = formField.title
        return cell
    }
    
    
}
