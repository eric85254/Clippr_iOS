//
//  ClientsUsingSearchViewController.swift
//  Clippr
//
//  Created by emgottfr on 2/5/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class ClientsUsingSearchViewController: UIViewController {

    let model = stylistSearchModel()
    @IBOutlet weak var foundStylists: UITableView!
    @IBOutlet weak var ZipEn: UITextField!
    @IBOutlet weak var FindBut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func searchStylists(_ sender: Any) {
        model.getStylistList(location: self.ZipEn.text, instance: self)
        print("Made the get call")
        
        
    }

    func goToList()
    {
        
        performSegue(withIdentifier: "search", sender: self)
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
