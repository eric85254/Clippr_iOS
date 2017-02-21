//
//  appointmentsStylistsViewController.swift
//  Clippr
//
//  Created by tcarpane on 2/5/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class appointmentsStylistsViewController: UIViewController {
    let model = HTTPS_model()
    @IBOutlet weak var testButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testForInfo(_ sender: UIButton) {
        model.download()
            
        
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
