//
//  NotificationsControllerViewController.swift
//  FirebaseStarterApp
//
//  Created by Juan on 10/18/19.
//  Copyright © 2019 Instamobile. All rights reserved.
//

import UIKit

class NotificationsController: UIViewController {

    private let backgroundColor: UIColor = .white
    private let tintColor = UIColor(hexString: "#ff7177")
    private let blackColor = UIColor(hexString: "#000000")
    private let subtitleColor = UIColor(hexString: "#464646")
    private let signUpButtonColor = UIColor(hexString: "#414665")
    private let signUpButtonBorderColor = UIColor(hexString: "#B0B3C6")

    private let titleFont = UIFont.boldSystemFont(ofSize: 30)
    private let subtitleFont = UIFont.boldSystemFont(ofSize: 18)
    private let buttonFont = UIFont.boldSystemFont(ofSize: 24)
    
    
    
    @IBOutlet var text: UITextField!
    @IBOutlet var button: UIButton!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
//setupHUBS()
            
           // NotiTitle.text="Enviar notificaciones"
            
            text.textAlignment = .center
            //text.layer.borderColor = UIColor.black.cgColor
            //text.layer.borderWidth = 1
            text.placeholder = "Escribe un mensaje"
            text.configure(cornerRadius: 55/2, backgroundColor: tintColor)
                   
                       
                      button.tintColor = .black
                       button.translatesAutoresizingMaskIntoConstraints = false
                        button.configure(color: .white,
                        cornerRadius: 55/2,
                        backgroundColor: tintColor)
                    //    button.backgroundColor = UIColor(white: 0.85, alpha: 1)
                       button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
                  //     button.addTarget(self, action: #selector(sendMenssage), for: .touchUpInside)
                       button.setTitle("Enviar Notificación", for: .normal)
            
    }
         /*   view.backgroundColor = .white
            
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logout))
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Camera", style: .plain, target: self, action: #selector(camera))*/
        }
   /*     @objc func camera()
        {
//        navigationController?.pushViewController(cameraController(), animated: true)
        }
        @objc func logout()
        {
    //       try! Auth.auth().signOut()
    //       present(LoginViewController(), animated: true, completion: nil)
        }

        
    //    function to send a message using the to id and the firebase token id
        @objc func sendMenssage()
        {
            Database.database().reference().child("users").observeSingleEvent(of: .value) { (snapshot) in
                guard let dictionary =  snapshot.value as? [String:Any] else {return}
               guard let fcmToken = Messaging.messaging().fcmToken else {return}
                dictionary.forEach({ (key,value) in
                    guard let uid = Auth.auth().currentUser?.uid else {return}
                    if key != uid{
                        let ref = Database.database().reference().child("messages").child(uid)
                        guard let messageText = self.text.text else {return}

                        let value = ["message":messageText,"fromDevice":fcmToken,"fromId":uid,"toId":key] as[String:Any]

                        ref.updateChildValues(value)
                        self.fetchmessages(toId: key)
                    }
                })
            }
        }
        
    //    fetch user to get user id and firebase token id
        
        func fetchmessages(toId: String)
        {
   //         Database.database().reference().child("users").child(toId).observeSingleEvent(of: .value) { (snapshot) in
        //        guard let dictionary = snapshot.value as? [String:Any] else {return}
      //          let fromDevice = dictionary["fromDevice"] as! String
      //          self.setupPushNotification(fromDevice: fromDevice)
            }
        }
        
        
        
    /*
     here we are posting the push notification using alamoire http request
     check documentation https:firebase.google.com/docs/cloud-messaging/ios/topic-messaging
     */

        fileprivate func setupPushNotification(fromDevice:String)
        {
            guard let message = text.text else {return}
            let title = "tech build dreams"
            let body = message
            let toDeviceID = fromDevice
            var headers:HTTPHeaders = HTTPHeaders()
            headers = ["Content-Type":"application/json","Authorization":"key=\(AppDelegate.SERVERKEY)"
            
            ]
            let notification = ["to":"\(toDeviceID)","notification":["body":body,"title":title,"badge":1,"sound":"default"]] as [String:Any]
            
            Alamofire.request(AppDelegate.NOTIFICATION_URL as URLConvertible, method: .post as HTTPMethod, parameters: notification, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
    //            print(response)
                self.text.text = ""
            }
      
        }

    //    input fields contraints
    fileprivate func setupHUBS()
    {
    //    message and username text field
        view.addSubview(text)
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant:-100 ).isActive = true
        text.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-40).isActive = true
        text.heightAnchor.constraint(equalToConstant: 50).isActive = true

        
    // submit button  constrains
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: text.bottomAnchor,constant:8).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
     }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
*/

