//
//  ATCPrincipalController.swift
//  FirebaseStarterApp
//
//  Created by Juan on 10/9/19.
//  Copyright © 2019 Instamobile. All rights reserved.
//

import UIKit

class ATCPrincipalController:UIViewController{
    
    @IBOutlet weak var featureScrollView: UIScrollView!
    
    @IBOutlet var principalView: UIView!
    
    @IBOutlet weak var beneficiosButton: UIButton!
    
    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var radioButton: UIButton!
    
    @IBOutlet weak var testButton: UIButton!
    
    
    let feature1 = ["Titulo":"Titulo","SliderMensaje":"Hey","SliderCantidad":"1","SliderFoto":"logo.png","SliderFecha":"Agosto"]
    let feature2 = ["Titulo":"Titulo","SliderMensaje":"Yeh","SliderCantidad":"2","SliderFoto":"logo.png","SliderFecha":"Septiembre"]
    let feature3 = ["Titulo":"Titulo","SliderMensaje":"Eyh","SliderCantidad":"3","SliderFoto":"logo.png","SliderFecha":"Octubre"]
    
    var featureArray = [Dictionary<String,String>]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
               //self.view.addSubview(FeatureView)
        featureArray = [feature1, feature2, feature3]
        featureScrollView.isPagingEnabled=true
        featureScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(featureArray.count), height: 200)
        loadFeatures()
    }
    
    func loadFeatures(){
        for (index, feature) in featureArray.enumerated(){
            if let featureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as? FeatureView{
                featureView.SliderFoto.image = UIImage(named: feature["SliderFoto"]!)
                featureView.SliderMensaje.text = feature["SliderMensaje"]
                featureView.SliderCantidad.text = feature["SliderCantidad"]
                featureView.Titulo.text = feature["Titulo"]
                
                featureScrollView.addSubview(featureView)
                featureView.frame.size.width = self.view.bounds.size.width
                featureView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
                
            }
            
        }
        
    }
    
}
