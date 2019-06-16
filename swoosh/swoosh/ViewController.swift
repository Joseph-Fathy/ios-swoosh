//
//  ViewController.swift
//  swoosh
//
//  Created by Joe on 6/16/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //reposition the logo to ceneter horizontally
        swoosh.frame=CGRect(x: (view.frame.width/2)-(swoosh.frame.width/2),
                            y: 50.0, width: swoosh.frame.width, height: swoosh.frame.height)
        
        //make the bagrounnd image fill the screen
        bgImg.frame=view.frame
        
    }


}

