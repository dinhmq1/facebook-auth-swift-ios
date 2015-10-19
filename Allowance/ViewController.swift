//
//  ViewController.swift
//  Allowance
//
//  Created by Mike Dinh on 10/18/15.
//  Copyright © 2015 Mike Dinh. All rights reserved.
//

import UIKit
import Parse
import Bolts
import FBSDKCoreKit
import FBSDKLoginKit
import ParseFacebookUtilsV4

class ViewController: UIViewController {

    @IBAction func btnFbLogin(sender: AnyObject) {
        
        let permissions = ["public_profile"]
        
        PFFacebookUtils.logInInBackgroundWithReadPermissions(permissions, block:{
            
            (user: PFUser?, error: NSError?) -> Void in
            
            if let error = error {
                print(error)
            } else {
                if let user = user {
                    print(user)
                    self.performSegueWithIdentifier("showSigninScreen", sender: self)
                }
            }
        })
    }
    
    override func viewDidAppear(animated: Bool) {
//   log user out
//        PFUser.logOut()
        
        if let username = PFUser.currentUser()?.username {
            
            performSegueWithIdentifier("showSigninScreen", sender: self)
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
















