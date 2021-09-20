//
//  ViewController.swift
//  Kadai13
//
//  Created by 吉田晃崇 on 2021/09/17.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let fruitNames = ["りんご", "みかん", "バナナ", "パイナップル"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)

        let label = cell.viewWithTag(1) as? UILabel
        label?.text = fruitNames[indexPath.row]

        func cellImage() {
            let image = cell.viewWithTag(2) as? UIImageView
            image?.image = UIImage(named: "check")
        }

        switch indexPath.row {
        case 1:
            cellImage()
        case 3:
            cellImage()
        default:
            break
        }
        return cell
    }
}
