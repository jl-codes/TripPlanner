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
  var delegate: EditViewControllerDelegate?
   
  @IBOutlet weak var newStop: UITextField!
    
  @IBAction func done(segue:UIStoryboardSegue) {
    print("done segue started")
//    let destination = segue.destination as! ViewController
//    destination.places.append(name)
    if let newPlace = newStop.text {
      delegate?.add(newPlace: newPlace)
    }
    navigationController?.popViewController(animated: true)
    dismiss(animated: true, completion: nil)
  }
    
  override func viewDidLoad() {
    super.viewDidLoad()

  }
    
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if let destination = segue.destination as? EditViewController {
//        destination.delegate = self
//    }
//    if segue.identifier == "doneWithSegue" {
//        name = newStop.text!
//    }
//  }
    
}

protocol EditViewControllerDelegate {
  func add(newPlace: String)
}
