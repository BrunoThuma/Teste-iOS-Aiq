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
        
        let fominhaImage = UIImage(named: "icon roxo.svg")?.withTintColor(.purple, renderingMode: .alwaysOriginal)
        self.navigationItem.leftBarButtonItem = .init(image: fominhaImage, style: .plain, target: nil, action: nil)
        
//        self.navigationItem.titleView = OrderItemFormTitleView()
        
        
        view = OrderItemFormView()
        guard let view = view as? OrderItemFormView else { return }
        
        view.formTitleView.titleLabel.text = viewModel.form?.title
        view.formTitleView.itemImageView.image = UIImage(named: viewModel.form?.itemImageName ?? "NoImage.png")
        view.formTitleView.initialPriceValueLabel.text = viewModel.form?.initialPrice.priceDescription
        view.formTitleView.descriptionLabel.text = viewModel.form?.description
        view.formFieldsTableView.dataSource = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension OrderItemFormViewController: OrderItemFormVMDelegate {
    
    func didGetForm() {
        guard let view = view as? OrderItemFormView else { return }
        view.formFieldsTableView.reloadData()
    }
    
    func didGetError(error: String) {
        print("Got error with description: \(error)")
    }
}

extension OrderItemFormViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.form?.formFields.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "FormCell", for: indexPath)
        let formField = self.viewModel.form!.formFields[indexPath.row]
        
        cell.textLabel!.text = formField.title
        return cell
    }
    
    
}
