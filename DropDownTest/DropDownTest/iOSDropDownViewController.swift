//
//  ViewController.swift
//  DropDownTest
//
//  Created by M3ts LLC on 3/1/22.
//

import UIKit
import iOSDropDown

class iOSDropDownViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var lblValue: UILabel!
    @IBOutlet weak var dropdown: DropDown!

    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // The list of array to display. Can be changed dynamically
        dropdown.optionArray = ["Option 1", "Option 2", "Option 3", "iosDropDown"]
       
        //Its Id Values and its optional
        dropdown.optionIds = [1,23,54,22]
     
        // Image Array its optional - Not sure how it work.
        dropdown.optionImageArray = ["🚯","‼️","❔"]

       // dropdown.optionImageArray = []
       dropdown.didSelect{(selectedText , index ,id) in
       self.lblValue.text = "Selected String : \(selectedText) \n index : \(index)\n with id : \(id) "
        }
    }
}

