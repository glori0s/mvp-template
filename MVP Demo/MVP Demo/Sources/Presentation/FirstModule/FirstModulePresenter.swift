//  
//  FirstModulePresenter.swift
//  MVP Demo
//
//  Created by user on 06.04.2023.
//

import UIKit

// MARK: - FirstModuleViewToPresenter

protocol FirstModuleViewToPresenter: AnyObject {
    
    // MARK: - Public methods
    
    func buttonTapped()
}

// MARK: - FirstModulePresenter

final class FirstModulePresenter: Presentable {
    
    // MARK: - Types
    
    typealias View = FirstModulePresenterToView
    
    // MARK: - Public properties
    
    var view: View?
    var navigationController: UINavigationController?
}

// MARK: - FirstModuleViewToPresenter

extension FirstModulePresenter: FirstModuleViewToPresenter {
    
    // MARK: - Public methods
    
    func buttonTapped() {
        view?.changeButtonColor()
        let secondModule = SecondModuleBuilder.createModule(view: SecondModuleView(), presenter: SecondModulePresenter(with: navigationController))
        navigationController?.show(secondModule, sender: nil)
    }
}
