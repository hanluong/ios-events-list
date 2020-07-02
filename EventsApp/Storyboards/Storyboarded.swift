//
//  Storyboarded.swift
//  EventsApp
//
//  Created by Han Luong on 6/14/20.
//  Copyright © 2020 Han Luong. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}




