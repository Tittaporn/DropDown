//
//  MyCell.swift
//  DropDownWithPodDropDown
//
//  Created by M3ts LLC on 3/2/22.
//

import UIKit
import DropDown

class MyCell: DropDownCell {

    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
