//
//  Extensions.swift
//  multiverse
//
//  Created by admin on 26/03/2022.
//

import UIKit

extension UIApplication{
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
    
    
}
