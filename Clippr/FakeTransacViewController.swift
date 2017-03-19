//
//  FakeTransacViewController.swift
//  Clippr
//
//  Created by emgottfr on 3/18/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class FakeTransacViewController: UIViewController {

    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var f: UIButton!
    @IBOutlet weak var t: UIButton!
    @IBOutlet weak var o: UIButton!
    @IBOutlet weak var z: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Payment"
        c.layer.borderWidth = 1
        c.layer.borderColor = UIColor.blue.cgColor
        f.layer.borderWidth = 1
        f.layer.borderColor = UIColor.blue.cgColor
        t.layer.borderWidth = 1
        t.layer.borderColor = UIColor.blue.cgColor
        o.layer.borderWidth = 1
        o.layer.borderColor = UIColor.blue.cgColor
        t.layer.borderWidth = 1
        t.layer.borderColor = UIColor.blue.cgColor
        z.layer.borderWidth = 1
        z.layer.borderColor = UIColor.blue.cgColor
        // Do any additional setup after loading the view.
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
