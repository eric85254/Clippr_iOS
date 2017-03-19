//
//  FakepaymentComViewController.swift
//  Clippr
//
//  Created by emgottfr on 3/18/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class FakepaymentComViewController: UIViewController {

    @IBOutlet weak var comment: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Payment Complete!"
        comment.layer.borderWidth = 1
        comment.layer.borderColor = UIColor.blue.cgColor
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
