//
//  CustomInputView.swift
//  multiverse
//
//  Created by admin on 27/03/2022.
//

import SwiftUI
//CUSTOM INPUT CHAT AND GROUP CHAT
struct CustomInputView: View {
   //PROPERTIES
    @Binding var text : String
    
    var action: () -> Void
   
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width,height: 0.75)
            HStack {
                TextField("Message...",text: $text)
                   
                    .padding([.top,.bottom],10).padding(.leading,20)
                    .background(Color(.systemGray5))
                    .cornerRadius(15)
                
                Button(action: action, label: {
                    
                    Image(systemName: "message.circle")
                        .resizable().scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                })
            }.padding(.top,5 ).padding(.horizontal)
        }
    }
}

