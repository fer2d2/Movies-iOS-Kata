//
//  PoorsManCompositionRoot.swift
//  MoviesiOSKata
//
//  Created by Jorge Sánchez on 5/11/16.
//  Copyright © 2016 xurxodev. All rights reserved.
//

import UIKit


class AppDependencies{
    
    var movieRepository:MovieRepository!
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {

        let viewController = moviesTableViewController(window)
        
        viewController.setMovieRepository(movieRepository)
    }
    
    func configureDependencies() {
        movieRepository = DiskMovieRepository()
    }
    
    func moviesTableViewController(window: UIWindow) -> MoviesTableViewController {
        let navigationController = navigationControllerFromWindow(window)
        
        let moviesTableViewController = navigationController.visibleViewController as! MoviesTableViewController
        
        return moviesTableViewController
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}