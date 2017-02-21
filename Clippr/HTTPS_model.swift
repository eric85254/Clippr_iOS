//
//  HTTPS_model.swift
//  Clippr
//
//  Created by emgottfr on 1/29/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import Foundation
import Gloss
import Alamofire


class HTTPS_model
{
      //  let currentURL = "HTTPS://0c71fcf8.ngrok.io"
        
    
    func download(){
        let currentloginURL = URL(string: testURL)
       
        let result = Alamofire.request(currentloginURL!, method: .get).responseJSON { response in
            debugPrint(response)
            
            if let json2 = response.result.value {
                print("JSON: \(json2)")
            }
        // Alamofire.request(.GET, currentloginURL).responseJSON { response in
           // let result = response.result
        
    }
    }
    
    
    func makePostCallLogin(username: String, password: String) -> Bool
    {
            // The value to be returned
            var didLogin = false
        
            // This makes the un-encoded JSON for the username and password login information
            let json: [String: Any] = [
                "username":username,
                "password":password
            ]
            // turns the URL into a URL object
            let urlZ = URL(string: currentURL)
        
            // Makes the HTTPS post request to attempt to login, it also encodes the constant json as an actual JSON object
        
            Alamofire.request(urlZ!, method: .post, parameters: json, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success:
                print("Validation Successful")
                didLogin = true
            case .failure(let error):
                print(error)
                didLogin = false
            }
            
            
            /*debugPrint(response)
            
            if let json2 = response.result.value {
                print("JSON: \(json2)")
            }*/
        
            /*let jsonData = try? JSONSerialization.data(withJSONObject: json)
            
            // create post request
            let url = URL(string: currentURL)!
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
            // insert json data to the request
            request.httpBody = jsonData
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    print(error?.localizedDescription ?? "No data")
                    return
                }
                let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
                if let responseJSON = responseJSON as? [String: Any] {
                    print(responseJSON)
                }
            }
            
            task.resume()
        return true
        }*/
            
            }
        return didLogin
    }
    
}
