//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by Han Luong on 6/14/20.
//  Copyright © 2020 Han Luong. All rights reserved.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators = [Coordinator]()
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = EventListViewController.instantiate()
        vc.coordinator = self
        self.navigationController.setViewControllers([vc], animated: false)
    }
    
    func testing() {
        print("Testing........")
    }
}
