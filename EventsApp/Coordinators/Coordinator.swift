//
//  Coordinator.swift
//  EventsApp
//
//  Created by Han Luong on 6/14/20.
//  Copyright © 2020 Han Luong. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    
    func start()
}
