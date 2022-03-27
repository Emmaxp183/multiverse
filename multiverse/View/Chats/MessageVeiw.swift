//
//  MessageVeiw.swift
//  multiverse
//
//  Created by admin on 27/03/2022.
//

import SwiftUI

struct MessageVeiw: View {
    var isFromCurrentUser :Bool
   
    var body: some View {
        HStack {
            if isFromCurrentUser{
                Spacer()
                Text("i love my wife ")
                    .padding(12)
                    .background(Color.blue)
                    .font(.system(size: 15))
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.leading,100)
                    .padding(.horizontal)
                
                
            }else{
                HStack(alignment: .bottom){
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                   
                    Text("i love my wife ")
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.system(size: 15))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                    
                    
                    
                }.padding(.horizontal).padding(.trailing,80)
                Spacer()
                
            }
        }
    }
}

struct MessageVeiw_Previews: PreviewProvider {
    static var previews: some View {
        MessageVeiw(isFromCurrentUser: true)
    }
}
