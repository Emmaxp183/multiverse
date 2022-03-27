//
//  Message.swift
//  multiverse
//
//  Created by admin on 27/03/2022.
//

import Foundation

struct Message : Identifiable {
    
    let id = UUID()
    let isFromCurrentUser: Bool
    let messageText: String
    
    
    
}
