//  ___FILEHEADER___

import Foundation

protocol Buidable {
    
    // MARK: - Types
    
    associatedtype View: Viewable
    associatedtype Presenter: Presentable
    
    // MARK: - Public methods
    
    static func createModule(view: View, presenter: Presenter) -> View
}

extension Buidable {
    
    // MARK: - Public methods
    
    /// Create module with view and presenter
    /// - Parameters:
    ///   - view: module view
    ///   - presenter: module presenter
    /// - Returns: UIViewController
    static func createModule(view: View, presenter: Presenter) -> View {
        view.presenter = presenter as? Self.View.Presenter
        presenter.view = view as? Self.Presenter.View
        return view
    }
}
