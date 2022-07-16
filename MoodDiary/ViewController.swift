//
//  ViewController.swift
//  Week2
//
//  Created by SC on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        orangeView.clipsToBounds = false

        orangeView.layer.cornerRadius = 20
        orangeView.layer.shadowColor = UIColor.black.cgColor
        orangeView.layer.shadowRadius = 30

//        clipsToBounds = false

    }


    @IBAction func switchValueChanged(_ sender: Any) {
    }
}

