//
//  SignUpViewController.swift
//  Allowance
//
//  Created by Mike Dinh on 10/18/15.
//  Copyright © 2015 Mike Dinh. All rights reserved.
//

import UIKit
import Parse
import FBSDKCoreKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let graphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler({
            (connection, result, error) -> Void in
            if error != nil {
                print(error)
            } else if let result = result {
                
                print(result)
                
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
