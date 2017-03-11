//
//  stylistSearchModel.swift
//  Clippr
//
//  Created by emgottfr on 3/11/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import Foundation
import Gloss
import Alamofire

class stylistSearchModel
{
    func getStylistList(location: String?) -> NSArray?
    {
        
        Alamofire.request(stylistListURL!).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        
        var returnValue: NSArray? = nil
        return returnValue
    }
    
}
