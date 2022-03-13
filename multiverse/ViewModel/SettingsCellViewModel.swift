//
//  SettingsCellViewModel.swift
//  multiverse
//
//  Created by admin on 12/03/2022.
//

import SwiftUI

enum SettingsCellViewModel : Int, CaseIterable{
    
    case Account
    case Notification
    case StarredMessages
    case Privacy
    
    var title: String{
        switch self{
        case .Account:
            return "Account"
        case .Notification:
            return "Notifications"
        case .StarredMessages:
            return "Starred Messages"
        case .Privacy:
            return "Privacy"
        }
    }
       var ImageName: String{
            switch self{
            case .Account:
                return "key.fill"
            case .Notification:
                return "bell.badge.fill"
            case .StarredMessages:
                return "star.fill"
            case .Privacy:
                return "lock"
            }
       }
            var BackgroundColor : Color{
                switch self{
                case .Account:
                    return .blue
                case .Notification:
                    return .red
                case .StarredMessages:
                    return .yellow
                case .Privacy:
                    return .gray
                }
        
           }
        
}
