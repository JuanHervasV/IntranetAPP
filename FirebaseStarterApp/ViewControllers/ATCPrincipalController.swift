//
//  ATCPrincipalController.swift
//  FirebaseStarterApp
//
//  Created by Juan on 10/16/19.
//  Copyright © 2019 Instamobile. All rights reserved.
//

import UIKit

class ATCPrincipalController:UIViewController, UIScrollViewDelegate{
    
    private let backgroundColor: UIColor = .white
    private let tintColor = UIColor(hexString: "#ff7177")
    private let blackColor = UIColor(hexString: "#000000")
    private let subtitleColor = UIColor(hexString: "#464646")
    private let signUpButtonColor = UIColor(hexString: "#414665")
    private let signUpButtonBorderColor = UIColor(hexString: "#B0B3C6")

    private let titleFont = UIFont.boldSystemFont(ofSize: 30)
    private let subtitleFont = UIFont.boldSystemFont(ofSize: 18)
    private let buttonFont = UIFont.boldSystemFont(ofSize: 24)
    
    
    @IBOutlet weak var featureScrollView: UIScrollView!
       
    @IBOutlet var totalView: UIView!
    
    @IBOutlet weak var beneficiosButton: UIButton!
    
    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var radioButton: UIButton!
    
    @IBOutlet weak var testButton: UIButton!
    
    let feature1 = ["Titulo":"Titulo","SliderMensaje":"Hey","SliderCantidad":"abc","SliderFoto":"logop.png","SliderFecha":"Agosto"]
    let feature2 = ["Titulo":"Titulo","SliderMensaje":"Yeh","SliderCantidad":"abb","SliderFoto":"logop.png","SliderFecha":"Septiembre"]
    let feature3 = ["Titulo":"Titulo","SliderMensaje":"Eyh","SliderCantidad":"bbd","SliderFoto":"logop.png","SliderFecha":"Octubre"]
    
    var featureArray = [Dictionary<String,String>]()
    
 override func viewDidLoad() {
        
        super.viewDidLoad()
                   //self.view.addSubview(FeatureView)
        featureArray = [feature1, feature2, feature3]
        featureScrollView.backgroundColor=UIColor.black
        featureScrollView.isPagingEnabled=true
        featureScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(featureArray.count), height: 200)
        featureScrollView.showsHorizontalScrollIndicator = false
        //featureScrollView.delegate = self
        
        loadFeatures()
    
    }
    
    func loadFeatures(){
    for (index, feature) in featureArray.enumerated(){
                
        if let featureView = UINib(nibName:"ATCPrincipalController", bundle: nil).instantiate(withOwner: self, options: nil)[0] as? FeatureView{
            
            featureView.SliderMensaje.text = feature["SliderMensaje"]
            featureView.SliderCantidad.text = feature["SliderCantidad"]
            featureView.Titulo.text = feature["Titulo"]
            featureView.SliderFoto.image = UIImage(named: feature["SliderFoto"]!)
            
            featureScrollView.addSubview(featureView)
            featureView.frame.size.width = self.view.bounds.size.width
            featureView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
            
        }
        
        testButton.setTitle("Enviar Notificaciones", for: .normal)
        testButton.addTarget(self, action: #selector(didTapTestButton), for: .touchUpInside)
        testButton.configure(color: .white,
                              cornerRadius: 55/2,
                              backgroundColor: tintColor)
        testButton.addTarget(self, action: #selector(didTapTestButton), for: .touchUpInside)
        
        menuButton.setTitle("Menú", for: .normal)
        menuButton.addTarget(self, action: #selector(didTapMenuButton), for: .touchUpInside)
        menuButton.configure(color: .white,
        
        cornerRadius: 55/2,
        backgroundColor: tintColor)
        menuButton.addTarget(self, action: #selector(didTapMenuButton), for: .touchUpInside)
        
        radioButton.setTitle("Radio Scharff", for: .normal)
        radioButton.addTarget(self, action: #selector(didTapRadioButton), for: .touchUpInside)
        radioButton.configure(color: .white,
        cornerRadius: 55/2,
        backgroundColor: tintColor)
        radioButton.addTarget(self, action: #selector(didTapRadioButton), for: .touchUpInside)
        
        beneficiosButton.setTitle("Beneficios", for: .normal)
        beneficiosButton.addTarget(self, action: #selector(didTapBeneficiosButton), for: .touchUpInside)
        beneficiosButton.configure(color: .white,
        cornerRadius: 55/2,
        backgroundColor: tintColor)
        beneficiosButton.addTarget(self, action: #selector(didTapBeneficiosButton), for: .touchUpInside)
          
    }
     
    }
    @objc private func didTapTestButton() {
        let loginVC = NotificationsController(nibName: "NotificationsController", bundle: nil)
        self.navigationController?.pushViewController(loginVC, animated: true)
       // let values = []
    }
    
    @objc private func didTapRadioButton() {
        let loginVB = RadioScharffController(nibName: "RadioScharffController", bundle: nil)
        self.navigationController?.pushViewController(loginVB, animated: true)
       // let values = []
    }
    
    @objc private func didTapBeneficiosButton() {
        let loginVD = BeneficiosController(nibName: "BeneficiosController", bundle: nil)
        self.navigationController?.pushViewController(loginVD, animated: true)
       // let values = []
    }
    
    
    @objc private func didTapMenuButton(){
        let loginVZ = MenuFoodController(nibName: "MenuFoodController", bundle: nil)
        self.navigationController?.pushViewController(loginVZ, animated: true)
    }
    
  /*  func createSlides() -> [FeatureView] {

        let slide1:FeatureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as! FeatureView
//        slide1.SliderFoto.image = UIImage(named: "logop")
        slide1.Titulo.text = "A real-life bear"
        slide1.SliderMensaje.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        let slide2:FeatureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as! FeatureView
  //      slide2.SliderFoto.image = UIImage(named: "logop")
        slide2.Titulo.text = "A real-life bear"
        slide2.SliderMensaje.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        let slide3:FeatureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as! FeatureView
    //    slide3.SliderFoto.image = UIImage(named: "logop")
        slide3.Titulo.text = "A real-life bear"
        slide3.SliderMensaje.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        let slide4:FeatureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as! FeatureView
      //  slide4.SliderFoto.image = UIImage(named: "logop")
        slide4.Titulo.text = "A real-life bear"
        slide4.SliderMensaje.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        
        let slide5:FeatureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as! FeatureView
        //slide5.SliderFoto.image = UIImage(named: "logop")
        slide5.Titulo.text = "A real-life bear"
        slide5.SliderMensaje.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        return [slide1, slide2, slide3, slide4, slide5]
    }
    
    func setupSlideScrollView(slides : [FeatureView]) {
        featureScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        featureScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        featureScrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            featureScrollView.addSubview(slides[i])
        }
    }
    
    var slides:[FeatureView] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        featureScrollView.delegate = self
        
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
            pageControl.currentPage = Int(pageIndex)
            
            let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
            let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x
            
            // vertical
            let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
            let currentVerticalOffset: CGFloat = scrollView.contentOffset.y
            
            let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
            let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
            
            
            /*
             * below code changes the background color of view on paging the scrollview
             */
    //        self.scrollView(scrollView, didScrollToPercentageOffset: percentageHorizontalOffset)
            
        
            /*
             * below code scales the imageview on paging the scrollview
             */
            let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
            
            if(percentOffset.x > 0 && percentOffset.x <= 0.25) {
                
                slides[0].SliderFoto.transform = CGAffineTransform(scaleX: (0.25-percentOffset.x)/0.25, y: (0.25-percentOffset.x)/0.25)
                slides[1].SliderFoto.transform = CGAffineTransform(scaleX: percentOffset.x/0.25, y: percentOffset.x/0.25)
                
            } else if(percentOffset.x > 0.25 && percentOffset.x <= 0.50) {
                slides[1].SliderFoto.transform = CGAffineTransform(scaleX: (0.50-percentOffset.x)/0.25, y: (0.50-percentOffset.x)/0.25)
                slides[2].SliderFoto.transform = CGAffineTransform(scaleX: percentOffset.x/0.50, y: percentOffset.x/0.50)
                
            } else if(percentOffset.x > 0.50 && percentOffset.x <= 0.75) {
                slides[2].SliderFoto.transform = CGAffineTransform(scaleX: (0.75-percentOffset.x)/0.25, y: (0.75-percentOffset.x)/0.25)
                slides[3].SliderFoto.transform = CGAffineTransform(scaleX: percentOffset.x/0.75, y: percentOffset.x/0.75)
                
            } else if(percentOffset.x > 0.75 && percentOffset.x <= 1) {
                slides[3].SliderFoto.transform = CGAffineTransform(scaleX: (1-percentOffset.x)/0.25, y: (1-percentOffset.x)/0.25)
                slides[4].SliderFoto.transform = CGAffineTransform(scaleX: percentOffset.x, y: percentOffset.x)
            }
        }*/
    
}
