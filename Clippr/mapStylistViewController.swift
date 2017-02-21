//
//  mapStylistViewController.swift
//  Clippr
//
//  Created by tcarpane on 2/5/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces
class mapStylistViewController: UIViewController {
    
  
     
    override func viewDidLoad() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 33.4255, longitude: -111.9400, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 33.4255, longitude: -111.9400)
        marker.title = "Tempe"
        marker.snippet = "Arizona"
        marker.map = mapView
        
       
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
