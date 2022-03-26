//
//  NewMessageView.swift
//  multiverse
//
//  Created by admin on 26/03/2022.
//

import SwiftUI

struct NewMessageView: View {
    //PROPERTIES CONNECTED TO THE NEW MESSAGE VIEW
   
    @Binding var showChatView: Bool
    //DISMISS TO MESSAGE VIEW
   
    @Environment(\.presentationMode)var mode
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                
               
                ForEach((0 ..< 10), id : \.self ){ _ in
                   
                    //CHANGED  CHAT LIST TO BUTTONS
                    Button(action:{
                        showChatView.toggle()
                        mode.wrappedValue.dismiss()
                               
                    }){
                       
                        UserCell()
                            .padding(.horizontal)
                        
                        
                    }
                    
                    
                }
                
                
            }.padding(.top)
            
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(showChatView: .constant(true))
    }
}
