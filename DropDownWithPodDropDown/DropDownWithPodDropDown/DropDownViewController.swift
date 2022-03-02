//
//  ViewController.swift
//  DropDownWithPodDropDown
//
//  Created by M3ts LLC on 3/2/22.
//

import UIKit
import DropDown

class DropDownViewController: UIViewController {
    // MARK: - Properties
    let menu: DropDown = {
        let menu = DropDown()
        menu.dataSource = [
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
        ]
        let images = [
            "bookmark",
            "pencil",
            "pencil.circle",
            "pencil.circle.fill",
            "bookmark",
        ]
        
        menu.cellNib = UINib(nibName: "DropDownCell", bundle: nil)
        menu.customCellConfiguration = { index, title , cell in
            guard let cell = cell as? MyCell else {
                return
            }
            cell.myImageView.image = UIImage(systemName: images[index])
        }
        return menu
    }()
 
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        let myView = UIView(frame: navigationController?.navigationBar.frame ?? .zero)
        myView.backgroundColor = .yellow
        navigationController?.navigationBar.topItem?.titleView = myView
        guard let topView =   navigationController?.navigationBar.topItem?.titleView else {return}
        menu.anchorView = topView
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapTopItem))
        gesture.numberOfTapsRequired = 1
        gesture.numberOfTouchesRequired = 1
        topView.addGestureRecognizer(gesture)
        
        // Selection
        menu.selectionAction = { index, title in
            print("index : \(index) and title : \(title)")
        }
    }
    
    // MARK: - Actions
    @objc func didTapTopItem() {
        menu.show()
    }
}

// https://www.youtube.com/watch?v=-tpJMQRSl_o
