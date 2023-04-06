//
//  Buildable.swift
//  MVP Demo
//
//  Created by user on 06.04.2023.
//

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
    
    static func createModule(view: View, presenter: Presenter) -> View {
        view.presenter = presenter as? Self.View.Presenter
        presenter.view = view as? Self.Presenter.View
        return view
    }
}
