//
//  ViewController.swift
//  Kadai13
//
//  Created by 吉田晃崇 on 2021/09/17.
//

import UIKit

struct ListItem {
    let name: String
    let isChecked: Bool
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak private var tableView: UITableView!
    private var fruitNames: [ListItem] = [
        ListItem(name: "りんご", isChecked: false),
        ListItem(name: "みかん", isChecked: true),
        ListItem(name: "バナナ", isChecked: false),
        ListItem(name: "パイナップル", isChecked: true)
    ]
    @IBAction private func exitDone(segue: UIStoryboardSegue) {
        if let add = segue.source as? AddViewController {
            fruitNames.append(ListItem(name: add.addTextField.text!, isChecked: false))
            self.tableView.reloadData()
        }
    }
    @IBAction private func exitCancel(segue: UIStoryboardSegue) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitNames.count
    }    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable:next force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! ListItemCell
        cell.configure(item: fruitNames[indexPath.row])
        return cell        
    }
}
