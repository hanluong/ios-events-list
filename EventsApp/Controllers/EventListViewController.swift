//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Han Luong on 6/14/20.
//  Copyright © 2020 Han Luong. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController, Storyboarded {

    weak var coordinator: EventListCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        let plusCircleImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusCircleImage, style: .plain, target: self, action: #selector(rightBarButtonTapped))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func rightBarButtonTapped() {
        print("right bar button tapped")
        coordinator?.testing()
    }
}
