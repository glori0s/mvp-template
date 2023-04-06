//
//  FirstModuleView.swift
//  MVP Demo
//
//  Created by glori0s on 06.04.2023.
//

import UIKit

// MARK: - FirstModulePresenterToView

protocol FirstModulePresenterToView: AnyObject {
    
    // MARK: - Public methods
    
    func changeButtonColor()
}

// MARK: - FirstModuleView

final class FirstModuleView: UIViewController, Viewable {
    
    // MARK: - Types
    
    typealias Presenter = FirstModuleViewToPresenter
    
    // MARK: - Public properties
    
    var presenter: Presenter?
    
    // MARK: - Private properties
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Push next VC", for: .normal)
        button.titleLabel?.textColor = .black
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "First VC"
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 66)
        ])
    }
    
    // Private methods
    
    @objc private func buttonTapped() {
        presenter?.buttonTapped()
    }
}

// MARK: - FirstModulePresenterToView

extension FirstModuleView: FirstModulePresenterToView {
    
    // MARK: - Public methods
    
    func changeButtonColor() {
        button.backgroundColor = .systemMint
    }
}
