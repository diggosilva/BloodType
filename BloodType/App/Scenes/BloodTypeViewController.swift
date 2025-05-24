//
//  BloodTypeViewController.swift
//  BloodType
//
//  Created by Diggo Silva on 22/05/25.
//

import UIKit

class BloodTypeViewController: UIViewController {
    
    let bloodTypeView = BloodTypeView()
    let viewModel = BloodTypeViewModel()
    
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
        let index = bloodTypeView.bloodSegmentedControl.selectedSegmentIndex
        viewModel.selectedType(at: index)
        updateLabels()
    }
    
    func didTapClearResult() {
        viewModel.clearResults()
        updateLabels()
        bloodTypeView.bloodSegmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    private func updateLabels() {
        bloodTypeView.donateLabel.text = viewModel.donateText()
        bloodTypeView.receiveLabel.text = viewModel.receiveText()
    }
}
