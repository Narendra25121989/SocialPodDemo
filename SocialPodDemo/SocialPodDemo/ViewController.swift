//
//  ViewController.swift
//  SocialPodDemo
//
//  Created by MAC3 on 11/2/17.
//  Copyright © 2017 app. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func fbLoginClicked(_ sender: Any) {
        FBHelper.instance().authenticateWithBlock { (Any, NSString) -> (Void) in
            if((FBSDKAccessToken.current()) != nil){
                FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, gender, birthday, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                    if (error == nil){
                        let dict = (result as! NSDictionary)
                        print(dict)
                    }
                })
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

