//
//  FirstModuleView.swift
//  MVP Demo
//
//  Created by glori0s on 06.04.2023.
//

import UIKit

// MARK: - ___VARIABLE_productName:identifier___PresenterToView

protocol ___VARIABLE_productName:identifier___PresenterToView: AnyObject {}

// MARK: - ___VARIABLE_productName:identifier___View

final class ___VARIABLE_productName:identifier___View: UIViewController, Viewable {
    
    // MARK: - Types
    
    typealias Presenter = ___VARIABLE_productName:identifier___ViewToPresenter
    
    // MARK: - Public properties
    
    var presenter: Presenter?
}

// MARK: - ___VARIABLE_productName:identifier___PresenterToView

extension ___VARIABLE_productName:identifier___View: ___VARIABLE_productName:identifier___PresenterToView {}
