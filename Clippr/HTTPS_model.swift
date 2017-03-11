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
    
    struct RepoMaker : Encodable
    {
        var fName: String?
        var lName: String?
        var email: String?
        var phone: String?
        var password: String?
        var isStylist: String?
        var pic: String?
        
        
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
                "first_name" ~~> self.fName,
                "last_name" ~~> self.lName,
                "email" ~~> self.email,
                "phonenumber" ~~> self.phone,
                "password" ~~> self.password,
                "is_stylist" ~~> self.isStylist,
                "profile_picture" ~~> self.pic
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
    func ViewFunc (instance: SignInViewController)
    {
        instance.goToStylistDash()
    }
    func makePostSignUP(firstName: String, lastName: String, email: String, phonenumber: String, password: String, isStylist: String)
    {
        var RepoMakerIN = RepoMaker()
        RepoMakerIN.fName = firstName
        RepoMakerIN.lName = lastName
        RepoMakerIN.email = email
        RepoMakerIN.phone = phonenumber
        RepoMakerIN.password = password
        RepoMakerIN.isStylist = isStylist
        RepoMakerIN.pic = "https://clipprphotos.s3.amazonaws.com:443/defaults/default_user.png?Signature=tKSDthudC2BOHbJcpV4macO2PmY%3D&Expires=1487733630&AWSAccessKeyId=AKIAINM4DXIZAY2HWJBA"
        
        
        /*let parameters: Parameters = [
            "first_name":firstName,
            "last_name":lastName,
            "email":email,
            "phonenumber":phonenumber,
            "is_stylist":isStylist,
            "profile_picture": "https://clipprphotos.s3.amazonaws.com:443/defaults/default_user.png?Signature=tKSDthudC2BOHbJcpV4macO2PmY%3D&Expires=1487733630&AWSAccessKeyId=AKIAINM4DXIZAY2HWJBA"
        ]*/
        
        let newJson2 = RepoMakerIN.toJSON()
        // Do a logout just to be sure
        
        doLogout()
        Alamofire.request(currentURL, method: .post, parameters: newJson2!, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success:
                print("Validation Successful")
                print(response.description)
            case .failure(let error):
                print(error)
                
            }

    }
    }
        
    func makePostCallLogin(usernameZ: String, passwordZ: String, instance: SignInViewController) -> Bool
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
                
                
                
               if let json = response.result.value as? [String: String]
               {
                
                if (json["is_stylist"]! == "YES")
                {
                    print("Went to Stylist")
                    instance.goToStylistDash()
                }
                else
                {
                  print("Went to Client")
                  instance.goToClientDash()
                }
               }
                //instance.goToStylistDash()
                print("Validation Successful")
                print(response.description)
                print("printed all of them")
                isLoggedIn = true
                flag = true
                
               // myFunctionCompletionHandler()
                
                
            case .failure(let error):
                instance.failedToLogin()
                print(error)
                isLoggedIn = false
                flag = true
                
               // myFunctionCompletionHandler()
            }
            
        }
            //Alamofire.request(signUpURL)
        
     
        
            return didLogin
        
    }
    func handler(test: Bool) -> ()
    {
       print("Is in Handler")
        isLoggedIn = test
    }
    
    
    
}
