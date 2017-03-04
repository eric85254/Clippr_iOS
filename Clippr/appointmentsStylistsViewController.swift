//
//  appointmentsStylistsViewController.swift
//  Clippr
//
//  Created by tcarpane on 2/5/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//
import GoogleAPIClient
import GTMOAuth2
import UIKit





class appointmentsStylistsViewController: UIViewController, UITextViewDelegate {
   
    
    var appointmentsScrollView: UIScrollView!
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch  stylistAppointments.selectedSegmentIndex {
        case 0:
            appointmentsScrollView = UIScrollView(frame: view.bounds)
            appointmentsScrollView.backgroundColor = UIColor.black
            appointmentsScrollView.autoresizingMask = UIViewAutoresizing.flexibleWidth;
            appointmentsScrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight;
            appointmentsScrollView.frame.origin = CGPoint(x: 7, y: 100)
            appointmentsScrollView.frame.size = CGSize(width: 310, height: 400)
            
            view.addSubview(appointmentsScrollView)

            testLabel.text = "Heyy"
            break;
        case 1:
            appointmentsScrollView = UIScrollView(frame: view.bounds)
            appointmentsScrollView.backgroundColor = UIColor.black
            appointmentsScrollView.autoresizingMask = UIViewAutoresizing.flexibleWidth;
            appointmentsScrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight;
            appointmentsScrollView.frame.origin = CGPoint(x: 7, y: 100)
            appointmentsScrollView.frame.size = CGSize(width: 310, height: 400)
            
            view.addSubview(appointmentsScrollView)

            testLabel.text = "YOOO"
            break;
        default:
            appointmentsScrollView = UIScrollView(frame: view.bounds)
            appointmentsScrollView.backgroundColor = UIColor.blue
            appointmentsScrollView.autoresizingMask = UIViewAutoresizing.flexibleWidth;
            appointmentsScrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight;
            appointmentsScrollView.frame.origin = CGPoint(x: 7, y: 100)
            appointmentsScrollView.frame.size = CGSize(width: 310, height: 400)
            
            view.addSubview(appointmentsScrollView)
            
            testLabel.text = "Heyy"

            break;
        }
    }
    @IBOutlet weak var stylistAppointments: UISegmentedControl!
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var testLabel: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
           
         
            
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
