//
//  View Controller.swift
//  COBA2
//
//  Created by Amara Putri Gunarso on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func setNewTaskButton(_ sender: Any) {
        performSegue(withIdentifier: "ViewToSetTask", sender: nil)

    }
}
