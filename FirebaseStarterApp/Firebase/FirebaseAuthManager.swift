//
//  FirebaseAuthManager.swift
//  FirebaseStarterApp
//
//  Created by Juan on 10/9/19.
//  Copyright © 2019 Instamobile. All rights reserved.
//

import FirebaseAuth
import UIKit

class FirebaseAuthManager {
    
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if let user = authResult?.user {
                print(user)
                completionBlock(true)
            }
            else{
                completionBlock(false)
            }
        }
    
    
    
}   
    
}
