//
//  SwiftUIView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct ConversationView: View {
    
    @State private var showNewMessageView = false
    @State private var showChatView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color(.systemGroupedBackground).ignoresSafeArea()
            
            NavigationLink(destination: ChatView(), isActive: $showChatView, label: {})
           
            
            ScrollView{
                VStack(alignment: .leading){
                    
                   
                    ForEach((0...10), id : \.self ){ _ in
                        //ConversationCell()
                        NavigationLink(destination: ChatView(), label:{ ConversationCell()})
                           
                    }
                    
                    
                }.padding(.top) .padding(.horizontal)
                
                
                
                
                
                
            }
      
            Button(action:{showNewMessageView.toggle()}){
                Image(systemName: "square.and.pencil")
                    .resizable().scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 24, height: 24)
                    .padding()
                
            }.background(Color.accentColor).clipShape(Circle()).padding().sheet(isPresented: $showNewMessageView, content: {NewMessageView(showChatView: $showChatView)})
            
        
        
        }//END OF ZSTACK
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
