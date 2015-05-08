//
//  ColorViewController.swift
//  SegueColorSample
//
//  Created by Lammert Westerhoff on 08/05/15.
//  Copyright (c) 2015 Lammert Westerhoff. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color
    }

}
