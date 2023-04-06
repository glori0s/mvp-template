//
//  Viewable.swift
//  MVP Demo
//
//  Created by glori0s on 06.04.2023.
//

import Foundation

protocol Viewable: AnyObject {
    
    // MARK: - Types
    
    associatedtype Presenter
    
    // MARK: - Public properties
    
    var presenter: Presenter? { get set }
}
