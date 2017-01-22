//
//  ViewController.swift
//  Clippr
//
//  Created by emgottfr on 1/21/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var signIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.signIn.layer.borderWidth = 2
        self.signIn.layer.borderColor = UIColor.blue.cgColor
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }


}

