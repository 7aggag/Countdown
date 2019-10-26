//
//  ViewController.swift
//  countdown
//
//  Created by mohamed haggag on 10/26/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class mainvc: UIViewController {
    @IBOutlet weak var hourtxt: specailtext!
    @IBOutlet weak var pricetxt: specailtext!
    @IBOutlet weak var pricelb: UILabel!
    @IBOutlet weak var hourlb: UILabel!
    @IBOutlet weak var clearbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hourlb.isHidden = true
        pricelb.isHidden = true
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        btn.backgroundColor=#colorLiteral(red: 0.1529411765, green: 0.8823529412, blue: 0.6862745098, alpha: 0.8286868579)
        btn.setTitle("Calculate", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn.addTarget(self, action: #selector(calculatetouch), for: .touchUpInside)
        
      //  view.addSubview(btn)
        
        hourtxt.inputAccessoryView = btn
        pricetxt.inputAccessoryView = btn
        
        
    }
    
    @IBAction func clearbtn(_ sender: Any) {
        hourlb.isHidden = true
        pricelb.isHidden = true
        hourtxt.text = ""
        pricetxt.text = ""
        
    }
    @objc func calculatetouch(){
        
        if let price = pricelb.text , let hourrate = hourtxt.text{
            if let priced = Double(price) , let hourd = Double(hourrate){
                 let result = calculation.calculate(forprice: priced, andhourerate: hourd)
                hourlb.isHidden = false
                pricelb.isHidden = false
                view.endEditing(true)
                    pricelb.text = "\(result)"
                
        
                }}}
    
    

}

