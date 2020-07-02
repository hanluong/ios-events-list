//
//  AppCoordinator.swift
//  EventsApp
//
//  Created by Han Luong on 6/14/20.
//  Copyright © 2020 Han Luong. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators = [Coordinator]()
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        let eventListCoordinator = EventListCoordinator(navigationController: navigationController)
        eventListCoordinator.start()
        childCoordinators.append(eventListCoordinator)
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
}

