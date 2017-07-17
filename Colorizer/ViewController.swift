//
//  ViewController.swift
//  Colorizer
//
//  Created by COBE Osijek on 17/07/2017.
//  Copyright © 2017 COBE Osijek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let turquoise = UIColor(red: 0.25, green: 0.93, blue: 0.82, alpha: 1)
        colorsArray.append(turquoise)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        // let Colors = colors(rawValue: 1)?.returnColor()
        self.view.backgroundColor = returnFromColorsArray()
    }

}
