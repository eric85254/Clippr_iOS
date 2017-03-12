//
//  ClientListOfProsViewController.swift
//  Clippr
//
//  Created by emgottfr on 3/11/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class ClientListOfProsViewController: UIViewController {
    
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(add.stylists.count)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This is a data source method that will be called when table is loaded
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return add.stylists.count
    }
    // This datasource method will create each cell of the table
    func tableView(_ tableView: UITableView,cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "stylist", for: indexPath) as! stylistSearchCell
        cell.fName.text = add.stylists[indexPath.row].getFName();
        cell.lName.text = add.stylists[indexPath.row].getLName();
        //cell.textLabel?.text = add.stylists[indexPath.row].getLName();
        //cell.detailTextLabel?.textAlignment = .right
        
        
        //let cell_Image = UIImage(named: add.stylists[indexPath.row].getImage())
        
        //cell.imageView?.image = cell_Image
        
        return cell;
    }
    
    
    
    // segue will be called as a row of the table is selected
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndex: IndexPath = self.addressTable.indexPath(for: sender as! UITableViewCell)!
        
        self.name = add.stylists[selectedIndex.row].getName();
        
        if(segue.identifier == "details"){
            if let detailviewController: DetailViewController = segue.destination as? DetailViewController {
                detailviewController.selectedName = name;
            }
        }
    }*/
    
    func getData(_ name:NSString) -> record
    {
        var j: Int = add.stylists.count-1
        var r: record = record(u: "", fn: "", ln: "", p: "")
        
        for i  in 0...j
        {
            if add.stylists[i].getLName() == name as String
            {
                r =  add.stylists[i]
            }
        }
        return r
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
