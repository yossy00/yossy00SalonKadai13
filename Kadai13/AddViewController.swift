//
//  AddViewController.swift
//  Kadai13
//
//  Created by 吉田晃崇 on 2021/09/23.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak private var addTextField: UITextField!

    private(set) var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapSave(_ sender: Any) {
        name = addTextField.text ?? ""
        performSegue(withIdentifier: "exitDone", sender: sender)
    }
}
