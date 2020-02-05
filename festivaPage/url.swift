//
//  url.swift
//  festivaPage
//
//  Created by saad  on 31/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//
import Foundation

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.umbriajazz.it/en/") {
            UIApplication.shared.open(url)
        }
    }
}
