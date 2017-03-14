//
//  ClientViewStylistProfileViewController.swift
//  Clippr
//
//  Created by emgottfr on 3/13/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class ClientViewStylistProfileViewController: UIViewController {

    @IBOutlet weak var menuBut: UIButton!
    @IBOutlet weak var portBut: UIButton!
    
    @IBOutlet weak var stylName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBut.layer.borderWidth = 1
        menuBut.layer.borderColor = UIColor.blue.cgColor
        portBut.layer.borderWidth = 1
        portBut.layer.borderColor = UIColor.blue.cgColor
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
        
        //cell.type.text = list[indexPath.row]
       // cell.type.text = "test"
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.textAlignment = .center
        //cell.detailTextLabel?.textAlignment = .right

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
