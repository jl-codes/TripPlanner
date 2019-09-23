//
//  ViewController.swift
//  TripPlannerApp
//
//  Created by Johnny Loehr on 9/22/19.
//  Copyright © 2019 Johnny Loehr. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        table.dataSource = self
//        table.delegate = self
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }


}

