//
//  Presentable.swift
//  MVP Demo
//
//  Created by glori0s on 06.04.2023.
//

import UIKit

protocol Presentable: AnyObject {
    
    // MARK: - Types
    
    associatedtype View
    
    // MARK: - Public properties
    
    var view: View? { get set }
    var navigationController: UINavigationController? { get set }
    
    // MARK: - Initializers
    
    init()
}

extension Presentable {
    
    // MARK: - Initializers
    
    /// Initialize with navigation controller defined
    /// - Parameter navigationController: UINavigation controller to assign to view controller
    init(with navigationController: UINavigationController? = nil) {
        self.init()
        
        self.navigationController = navigationController
    }
}
