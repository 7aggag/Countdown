//
//  calculation.swift
//  countdown
//
//  Created by mohamed haggag on 10/26/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import Foundation
class calculation {
    
    class func  calculate (forprice price : Double  , andhourerate hourrate : Double ) -> Int {
       
        return Int (round( price / hourrate))
        
    
    }
    
}
