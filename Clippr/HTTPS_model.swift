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
        
   
    
    
    func closureTest(closure: () -> Void)
    {
        
    }
    

    struct RepoOwner : Encodable
    {
        var uName: String?
        var pWord: String?
       // init(username emailEntry: String)
       // {
         //   uName = emailEntry
       // }
        //init(password passName: String)
        //{
          //  pWord = passName
       // }

        // MARK: - Deserialization
        // ...
        
        // MARK: - Serialization
        func toJSON() -> JSON? {
            return jsonify([
                "username" ~~> self.uName,
                "password" ~~> self.pWord
                ])
        }
    }
    
  
    
    func doLogout()
    {
        let urlL = URL(string: logoutURL)
        Alamofire.request(urlL!)
    }
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
    
    func makePostSignUP(firstName: String, lastName: String, email: String, phonenumber: String, isStylist: String)
    {
        let parameters: Parameters = [
            "first_name":firstName,
            "last_name":lastName,
            "email":email,
            "phonenumber":phonenumber,
            "is_stylist":isStylist,
            "profile_picture": "https://clipprphotos.s3.amazonaws.com:443/defaults/default_user.png?Signature=tKSDthudC2BOHbJcpV4macO2PmY%3D&Expires=1487733630&AWSAccessKeyId=AKIAINM4DXIZAY2HWJBA"
        ]
        // Do a logout just to be sure
        
        doLogout()
        Alamofire.request(currentURL, method: .post, parameters: parameters, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success:
                print("Validation Successful")
                print(response.description)
            case .failure(let error):
                print(error)
                
            }

    }
    }
        
    func makePostCallLogin(usernameZ: String, passwordZ: String, completionHandler:@escaping (Bool) -> ()) -> Bool
    {
            // The value to be returned, defaults to fasle
            var didLogin = false
            var flag = false
        
            // Creates an intance of the GLOSS struct with the inputed username and password
            var RepoOwnerIN = RepoOwner()
            RepoOwnerIN.uName = usernameZ
            RepoOwnerIN.pWord = passwordZ
        
            let urlZ = URL(string: currentURL)
            //let urlL = URL(string: logoutURL)
            // Make a GET call to logout 
            doLogout()
            //Alamofire.request(urlL!)
        
 
            let newJson = RepoOwnerIN.toJSON()
        
            // This makes the un-encoded JSON for the username and password login information
        
            let parameters: Parameters = [
                "username":usernameZ,
                "password":passwordZ
            ]
            // turns the URL into a URL object
        
        
            // Makes the HTTPS post request to attempt to login, it also encodes the constant json as an actual JSON object
            print("!!!!!!This is the JSON!!!!!")
            print(newJson!)
        
            Alamofire.request(urlZ!, method: .post, parameters: newJson!, encoding: JSONEncoding.default).validate(contentType: ["application/json"]).responseJSON { response in
            switch response.result {
            case .success:
                completionHandler(true)
                print("Validation Successful")
                print(response.description)
                didLogin = true
                flag = true
               // myFunctionCompletionHandler()
                
                
            case .failure(let error):
                completionHandler(false)
                print(error)
                didLogin = false
                flag = true
               // myFunctionCompletionHandler()
            }
            
        }
            //Alamofire.request(signUpURL)
        
     
        
            return didLogin
        
    }
    func handler(test: Bool) -> ()
    {
       print("In Handler")
    }
    
    
    
}
