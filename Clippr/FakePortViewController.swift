//
//  FakePortViewController.swift
//  Clippr
//
//  Created by emgottfr on 3/18/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class FakePortViewController: UIViewController {

    
    @IBOutlet weak var port: UIButton!
    @IBOutlet weak var Menu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Jessica Brown"
        // Do any additional setup after loading the view.
        port.layer.borderWidth = 1
        port.layer.borderColor = UIColor.blue.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
