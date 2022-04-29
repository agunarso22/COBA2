//
//  DataViewController.swift
//  COBA2
//
//  Created by Amara Putri Gunarso on 28/04/22.
//

import UIKit

class DataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



    @IBOutlet weak var dataTableView: UITableView!
    let data = ["Belajar Swift", "Kerjain Skripsi", "Kasih Makan Gatot"]
    lazy var rowsToDisplay = data


    override func viewDidLoad() {
        super.viewDidLoad()
        dataTableView.delegate = self
        dataTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier:"toTimeViewController", sender: self)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsToDisplay.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = rowsToDisplay[indexPath.row]
        return cell
    }

}
