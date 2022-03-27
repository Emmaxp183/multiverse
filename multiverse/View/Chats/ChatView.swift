//
//  ChatView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @ObservedObject var viewModel = chatViewModel()
    
    var body: some View {
       // ConversationView()
        VStack {
            //MESSAGES
            ScrollView{
                VStack(alignment: .leading) {
                    ForEach(viewModel.messages){ message in
                        
                        MessageVeiw(isFromCurrentUser:message.isFromCurrentUser, messageText: message.messageText)
                        
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
        viewModel.sendMessage(messageText)
        messageText = ""
    }
    
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
