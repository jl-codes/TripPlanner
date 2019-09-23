//
//  ViewController.swift
//  TripPlannerApp
//
//  Created by Johnny Loehr on 9/22/19.
//  Copyright © 2019 Johnny Loehr. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UITableViewController {
    
  var places = [String]()
  var newPlace: String = ""
//
//  @IBOutlet weak var table: UITableView!
    
//  @IBAction func cancel(segue:UIStoryboardSegue) {
//    
//  }
    
  @IBAction func done(segue:UIStoryboardSegue) {
    print("done segue started")
    let newPlaceViewController = segue.source as! EditViewController
    newPlace = newPlaceViewController.name
    places.append(newPlace)
    tableView.reloadData()
  }
    
  override func viewDidLoad() {
    super.viewDidLoad()
//    tableView.dataSource = self
//    tableView.delegate = self
//    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "placeCell")
 
    places = ["10 Rimington Ln, Decatur", "2525 N Decatur Rd, Decatur", "3393 Peachtree Rd NE, Atlanta", "816 N Highland Ave NE, Atlanta"]
  }
    
  override func numberOfSections(in table: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return places.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)

    cell.textLabel?.text = places[indexPath.row]

    return cell
  }

}
