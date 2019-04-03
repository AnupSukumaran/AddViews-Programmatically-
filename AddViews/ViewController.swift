//
//  ViewController.swift
//  AddViews
//
//  Created by Qaptive Technologies on 03/04/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NoDataView.added(self.view)
    }

    @IBAction func btnAction(_ sender: Any) {
        print("action")
        NoDataView.remove(self.view)
    }
    @IBAction func adder(_ sender: Any) {
        print("action2")
        NoDataView.added(self.view)
    }
    
}

