//
//  ClientViewStylistProfileViewController.swift
//  Clippr
//
//  Created by emgottfr on 3/13/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class ClientViewStylistProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
    }
    // This datasource method will create each cell of the table
    func tableView(_ tableView: UITableView,cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
       // python c NAND and NOR cache, Robotics, sowftware cache, semiconductors
        var list = ["Stylist Menu", "Stylist Portfolio"]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Menu", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
            
        return cell
        
        

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
