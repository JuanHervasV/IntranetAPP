//
//  ATCClassicLandingScreenViewController.swift
//  DashboardApp
//
//  Created by Florian Marcu on 8/8/18.
//  Copyright © 2018 Instamobile. All rights reserved.
//

import UIKit
import GoogleSignIn
import FLAnimatedImage

class ATCClassicLandingScreenViewController: UIViewController {
    
    
    @IBOutlet var testButton: UIButton!
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet weak var image: FLAnimatedImageView!
    
    
    private let backgroundColor: UIColor = .white
    private let tintColor = UIColor(hexString: "#ff7177")
    private let blackColor = UIColor(hexString: "#000000")
    private let subtitleColor = UIColor(hexString: "#464646")
    private let signUpButtonColor = UIColor(hexString: "#414665")
    private let signUpButtonBorderColor = UIColor(hexString: "#B0B3C6")

    private let titleFont = UIFont.boldSystemFont(ofSize: 30)
    private let subtitleFont = UIFont.boldSystemFont(ofSize: 18)
    private let buttonFont = UIFont.boldSystemFont(ofSize: 24)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://i.imgur.com/z3E9H22.gif"
        let url = URL(string: urlString)!
        let imageData = try? Data(contentsOf: url)
        let imageData1 = FLAnimatedImage(animatedGIFData: imageData)
        
        image.animatedImage = imageData1
        
        logoImageView.image = UIImage.localImage("slogo.png", template: true)
        logoImageView.tintColor = subtitleColor
        
        titleLabel.font = titleFont
        titleLabel.text = "Scharff"
        titleLabel.textColor = tintColor

        subtitleLabel.font = subtitleFont
        subtitleLabel.text = "Envía. Recibe. Acerca."
        subtitleLabel.textColor = subtitleColor

        loginButton.setTitle("Iniciar sesión", for: .normal)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        loginButton.configure(color: .white,
                              font: buttonFont,
                              cornerRadius: 55/2,
                              backgroundColor: tintColor)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        
        /*var error: NSError?
        //GIDSignIn.sharedInstance().
        if error != nil {
            print(error)
            return
        }*/
        

        signUpButton.setTitle("Registrarse", for: .normal)
        signUpButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
        signUpButton.configure(color: signUpButtonColor,
                               font: buttonFont,
                               cornerRadius: 55/2,
                               borderColor: signUpButtonBorderColor,
                               backgroundColor: backgroundColor,
                               borderWidth: 1)
        signUpButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
        
        
        testButton.setTitle("Test Button", for: .normal)
               testButton.addTarget(self, action: #selector(didTaptestButton), for: .touchUpInside)
               testButton.configure(color: .white,
                                     font: buttonFont,
                                     cornerRadius: 55/2,
                                     backgroundColor: tintColor)
               testButton.addTarget(self, action: #selector(didTaptestButton), for: .touchUpInside)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    @objc private func didTapLoginButton() {
        let loginVC = ATCClassicLoginScreenViewController(nibName: "ATCClassicLoginScreenViewController", bundle: nil)
        self.navigationController?.pushViewController(loginVC, animated: true)
    }

    @objc private func didTapSignUpButton() {
        let signUpVC = ATCClassicSignUpViewController(nibName: "ATCClassicSignUpViewController", bundle: nil)
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    @objc private func didTaptestButton() {
        let signUpVC = ATCPrincipalController(nibName: "ATCPrincipalController", bundle: nil)
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
   
}
