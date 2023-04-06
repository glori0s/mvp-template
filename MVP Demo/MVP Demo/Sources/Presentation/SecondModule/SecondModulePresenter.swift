//  
//  SecondModulePresenter.swift
//  MVP Demo
//
//  Created by user on 06.04.2023.
//

import UIKit

// MARK: - SecondModuleViewToPresenter

protocol SecondModuleViewToPresenter: AnyObject {}

// MARK: - SecondModulePresenter

final class SecondModulePresenter: Presentable {
    
    // MARK: - Types
    
    typealias View = SecondModulePresenterToView
    
    // MARK: - Public properties
    
    var view: View?
    var navigationController: UINavigationController?
}

// MARK: - SecondModuleViewToPresenter

extension SecondModulePresenter: SecondModuleViewToPresenter {}
