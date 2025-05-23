//
//  BloodTypeViewController.swift
//  BloodType
//
//  Created by Diggo Silva on 22/05/25.
//

import UIKit

class BloodTypeViewController: UIViewController {
    
    let bloodTypeView = BloodTypeView()
    
    override func loadView() {
        super.loadView()
        view = bloodTypeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureDelegates()
    }
    
    private func configureNavigationBar() {
        title = "Compatibilidade Sanguínea"
    }
    
    private func configureDelegates() {
        bloodTypeView.delegate = self
    }
}

extension BloodTypeViewController: BloodTypeViewDelegate {
    func didChangeBloodType() {
        print("Escolheu um tipo de sangue")
    }
    
    func didTapClearResult() {
        print("Clicou no botão Limpar Resultado")
    }
}


#Preview {
    BloodTypeViewController()
}
