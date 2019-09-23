//
//  EditViewController.swift
//  TripPlannerApp
//
//  Created by Johnny Loehr on 9/23/19.
//  Copyright © 2019 Johnny Loehr. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
  var name: String = ""
   
  @IBOutlet weak var newStop: UITextField!
    
  override func viewDidLoad() {
    super.viewDidLoad()

  }
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "doneWithSegue" {
        name = newStop.text!
    }
  }
    
}
