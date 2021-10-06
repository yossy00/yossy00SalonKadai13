//
//  ListItemCell.swift
//  Kadai13
//
//  Created by 吉田晃崇 on 2021/09/22.
//

import UIKit

class ListItemCell: UITableViewCell {
    @IBOutlet weak private(set) var thumbnailImageView: UIImageView!
    @IBOutlet weak private var nameLabel: UILabel!
    func configure (item: ListItem) {
        nameLabel.text = item.name
        thumbnailImageView.image = item.isChecked ? UIImage(named: "check") : nil
    }
}
