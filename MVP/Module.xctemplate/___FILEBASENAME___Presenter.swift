//  ___FILEHEADER___

import UIKit

// MARK: - ___VARIABLE_productName:identifier___ViewToPresenter

protocol ___VARIABLE_productName:identifier___ViewToPresenter: AnyObject {}

// MARK: - ___VARIABLE_productName:identifier___Presenter

final class ___VARIABLE_productName:identifier___Presenter: Presentable {
    
    // MARK: - Types
    
    typealias View = ___VARIABLE_productName:identifier___PresenterToView
    
    // MARK: - Public properties
    
    var view: View?
    var navigationController: UINavigationController?
}

// MARK: - ___VARIABLE_productName:identifier___ViewToPresenter

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___ViewToPresenter {}
