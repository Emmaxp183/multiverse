//
//  StatusViewModel.swift
//  multiverse
//
//  Created by admin on 19/03/2022.
//

import Foundation
import SwiftUI

class StatusViewModel : ObservableObject {
    
    @Published var status: UserStatus = .notConfigured
    
    
    // FUNCTION TO UPDATE THE STATUS
    
    func updateStatus(_ status: UserStatus){
        
        self.status = status
        
    }
    
    
}
enum UserStatus : Int, CaseIterable{
    
    case notConfigured
    case available
    case busy
    case school
    case movies
    case batterylow
    case meeting
    case gym
    case sleeping
    case urgentCallsOnly
    
    var title: String{
        switch self{
            
            
        case .notConfigured: return "Click here to update your status"
            
        case .available: return "Available"
            
        case .busy: return "Busy"
            
        case .school: return "At School"
            
        case .movies: return "At the movies"
            
        case .batterylow: return "Battery about to die"
            
        case .meeting: return "In a meeting"
            
        case .gym: return "At the gym"
            
        case .sleeping: return "Sleeping"
            
        case .urgentCallsOnly: return "Urgent calls Only"
            
        }
    
    
    }
}
