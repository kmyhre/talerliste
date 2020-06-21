//
//  ViewController.swift
//  talerliste
//
//  Created by Kristian Myhre on 20/06/2020.
//  Copyright © 2020 Kristian Myhre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        møteStatus.textAlignment = .center
        møteStatus.text = "Det fungerte ikke."
    }

    @IBOutlet weak var møteStatus: UILabel!
    
    @IBAction func refresh_møteStatus(_ sender: Any) {
        fetchJSON()
    }
}

