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
    var stylists: [record] = []
    
    struct perStyle: Decodable {
       
        /*
       // let ownerId: Int
       // let username: String?
        let urlS: String?
        let fname: String?
        let lname: String?
        
        let profilePic: String?
        */
        let JSON: NSArray?
        // MARK: - Deserialization
        
        init?(json: JSON) {
            /*self.urlS = "url" <~~ json
            self.fname = "first_name" <~~ json
            self.lname = "last_name" <~~ json
            self.profilePic = "profile_picture" <~~ json
            //self.username = "login" <~~ json
            */
            self.JSON = "JSON" <~~ json
        }
    }
    
    func getStylistList(location: String?, instance: ClientsUsingSearchViewController)
    {
        var urlS: String?
        var fname: String?
        var lname: String?
        var profilePic: String?
        var count: Int = 0
        //var tempStore: Any
        
        print("in getStylistLocation call")
        Alamofire.request(stylistListURL!).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let result = response.result.value {
                let JSON = result as! NSArray
                print("RIGHT BEFORE Printing JSON")
                //var styleTest = perStyle(json: JSON)
                
                count = JSON.count
                for amount in JSON
                {
                    var tempStore  = amount as! [String: String]
                    print(tempStore["first_name"]!)
                    var newStylist = record(u: tempStore["url"]!, fn: tempStore["first_name"]!, ln: tempStore["last_name"]! , p: "ASK KAT about")
                    self.stylists.append(newStylist)
                }
                
                
                //print(testVar["first_name"])
                print("RIGHT AFTER Printing JSON")
                print("About to preform SEGUE")
                instance.goToList()
            }
            /*if let JSON = response.value
            {
                print(JSON)
                //
                //self.stylists.append(newStylist)
                var styleJson = perStyle(json: JSON as! JSON)
                print("JSON: \(styleJson?.fname)")
            }*/
        }

    }
    
}



class record
{
    var urlS: String = ""
    var fname: String = ""
    var lname: String = ""
    //var address: String = ""
    var profilePic: String = ""
    
    init (u: String, fn: String, ln: String,  p: String)
    {
        urlS = u
        fname=fn
        lname = ln
       // address=a
        profilePic=p;
        
    }
    
    internal func getFName() -> String
    {
        return fname
    }
    
    internal func getLName() -> String
    {
        return lname
    }
    
    internal func getURL() -> String
    {
        return urlS
    }
    
    internal func getPic() -> String
    {
        return profilePic
    }
}
