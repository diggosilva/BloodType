//
//  BloodyTypeView.swift
//  BloodType
//
//  Created by Diggo Silva on 22/05/25.
//

import UIKit

protocol BloodTypeViewDelegate: AnyObject {
    func didChangeBloodType()
    func didTapClearResult()
}

class BloodTypeView: UIView {
    
    var donateLabel = PaddingLabel()
    var receiveLabel = PaddingLabel()
    var stackViewLabels = UIStackView()
    
    let bloodSegmentedControl = UISegmentedControl(items: ["O+", "O-", "A+", "A-", "B+", "B-", "AB+", "AB-"])
    let clearResultButton = UIButton(type: .system)
    var stackView = UIStackView()
    
    weak var delegate: BloodTypeViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        donateLabel = configLabel(text: "Doa para: ", color: .systemGreen)
        receiveLabel = configLabel(text: "Recebe de: ", color: .systemBlue)
        
        stackViewLabels = UIStackView(arrangedSubviews: [donateLabel, receiveLabel])
        stackViewLabels.translatesAutoresizingMaskIntoConstraints = false
        stackViewLabels.axis = .vertical
        stackViewLabels.spacing = 16
        
        bloodSegmentedControl.backgroundColor = .systemRed
        bloodSegmentedControl.addTarget(self, action: #selector(didChangeBloodType), for: .valueChanged)
        
        clearResultButton.setTitle("Limpar Resultados", for: .normal)
        clearResultButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
        clearResultButton.addTarget(self, action: #selector(didTapClearResult), for: .touchUpInside)
        
        stackView = UIStackView(arrangedSubviews: [bloodSegmentedControl, clearResultButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        
        addSubview(stackViewLabels)
        addSubview(stackView)
        backgroundColor = .systemBackground
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackViewLabels.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackViewLabels.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackViewLabels.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -30),
            
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }
    
    @objc private func didChangeBloodType() {
        delegate?.didChangeBloodType()
    }
    
    @objc private func didTapClearResult() {
        delegate?.didTapClearResult()
    }
    
    private func configLabel(text: String, color: UIColor) -> PaddingLabel {
        let label = PaddingLabel()
        label.text = text
        label.textColor = color
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.layer.borderWidth = 1
        label.layer.borderColor = color.cgColor
        label.layer.cornerRadius = 4
        label.numberOfLines = 0
        label.backgroundColor = color.withAlphaComponent(0.2)
        return label
    }
}
