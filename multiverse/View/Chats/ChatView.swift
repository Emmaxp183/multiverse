//
//  ChatView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    
    var body: some View {
       // ConversationView()
        VStack {
            //MESSAGES
            ScrollView{
                VStack(alignment: .leading) {
                    ForEach((0...10), id: \.self){_ in
                        
                        MessageVeiw(isFromCurrentUser: false)
                        
                    }
                    
                }
         
            }
            
            
            //INPUT VIEW
            CustomInputView(text: $messageText, action: sendMessage)
        }
        .navigationTitle("Emmanuel Mensah")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
        
       
        
    }
    // CUSTOM MESSAGE FOR SENDING MESSAGE
    
    func sendMessage() {
        print("Send message\(messageText)")
        messageText = ""
    }
    
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
