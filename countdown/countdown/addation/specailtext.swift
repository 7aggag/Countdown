//
//  specailtext.swift
//  countdown
//
//  Created by mohamed haggag on 10/26/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

  @IBDesignable
class specailtext: UITextField {
    
    override func prepareForInterfaceBuilder() {
        style()
    }
    
    override func awakeFromNib() {
        super .awakeFromNib()
       style()
    }
    
    func style (){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

