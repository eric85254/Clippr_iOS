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
    
    @IBOutlet weak var testButton: UIButton!
    private let kKeychainItemName = "AIzaSyA5VPXghdjOmUjpbF9e7e3hoED6yRAPoh"
    private let kClientID = "791886772255-g11hj2eknirbrmov4q6oosphdafnieof.apps.googleusercontent.com"
    private let kRedirectURI = "com.googleusercontent.apps.791886772255-g11hj2eknirbrmov4q6oosphdafnieof"
    
    // If modifying these scopes, delete your previously saved credentials by
    // resetting the iOS simulator or uninstall the app.
    private let scopes = [kGTLAuthScopeCalendarReadonly]
    
    private let service = GTLServiceCalendar()
    let output = UITextView()
   
    
    // When the view loads, create necessary subviews
    // and initialize the Google Calendar API service
    override func viewDidLoad() {
        super.viewDidLoad()
        
       output.frame = view.bounds
       output.isEditable = false
       output.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
       output.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        view.addSubview(output);
        if let auth = GTMOAuth2ViewControllerTouch.authForGoogleFromKeychain(
            forName: kKeychainItemName,
            clientID: kClientID,
            clientSecret: nil) {
            service.authorizer = auth
        }
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let authorizer = service.authorizer,
            let canAuth = authorizer.canAuthorize, canAuth {
            fetchEvents()
        } else {
            present(
                createAuthController(),
                animated: true,
                completion: nil
            )
        }
    }
    
    func fetchEvents() {
        let query = GTLQueryCalendar.queryForEventsList(withCalendarId: "primary")
        query!.maxResults = 10
        query!.timeMin = GTLDateTime(date: NSDate() as Date!, timeZone: NSTimeZone.local)
        query!.singleEvents = true
        query!.orderBy = kGTLCalendarOrderByStartTime
        service.executeQuery(
            query!,
            delegate: self,
            didFinish: Selector(("displayResultWithTicket:finishedWithObject:error:"))
        )
    }

    private func createAuthController() -> GTMOAuth2ViewControllerTouch {
        let scopeString = scopes.joined(separator: " ")
        return GTMOAuth2ViewControllerTouch(
            scope: scopeString,
            clientID: kClientID,
            clientSecret: nil,
            keychainItemName: kKeychainItemName,
            delegate: self,
            finishedSelector: Selector(("viewController:finishedWithAuth:error:"))
        )
    }
    
    func viewController(vc : UIViewController,
                        finishedWithAuth authResult : GTMOAuth2Authentication, error : NSError?) {
        
        if let error = error {
            service.authorizer = nil
            showAlert(title: "Authentication Error", message: error.localizedDescription)
            return
        }
        
        service.authorizer = authResult
        dismiss(animated: true, completion: nil)
    }
    
    func showAlert(title : String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertControllerStyle.alert
        )
        let ok = UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil
        )
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testForInfo(_ sender: UIButton) {
        model.download()
            
        
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
