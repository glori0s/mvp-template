//
//  FirstModuleView.swift
//  MVP Demo
//
//  Created by glori0s on 06.04.2023.
//

import UIKit

// MARK: - SecondModulePresenterToView

protocol SecondModulePresenterToView: AnyObject {}

// MARK: - SecondModuleView

final class SecondModuleView: UIViewController, Viewable {
    
    // MARK: - Types
    
    typealias Presenter = SecondModuleViewToPresenter
    
    // MARK: - Public properties
    
    var presenter: Presenter?
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second VC"
        view.backgroundColor = .systemMint
    }
}

// MARK: - SecondModulePresenterToView

extension SecondModuleView: SecondModulePresenterToView {}
