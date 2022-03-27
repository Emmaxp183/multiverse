//
//  ChatViewModel.swift
//  multiverse
//
//  Created by admin on 27/03/2022.
//

import Foundation

class chatViewModel : ObservableObject{
    
    @Published var messages = [Message]()
    init(){
        messages = mockMessages
        
    }
    
    var mockMessages : [Message]{
      
        [
            .init(isFromCurrentUser: true, messageText: "Yo whatsup my brother"),
            .init(isFromCurrentUser: false, messageText: "fine by jehovahs grace"),
            .init(isFromCurrentUser: true, messageText: "Good to hear that from you"),
            .init(isFromCurrentUser: false, messageText: "its been a while hearing from you"),
            .init(isFromCurrentUser: true, messageText: "yea sure i have been busy")
        
            ]
        
    }
    
    func sendMessage(_ messageText : String){
        let message = Message(isFromCurrentUser: true, messageText: messageText)
        messages.append(message)
        
        
        
    }
    
}
