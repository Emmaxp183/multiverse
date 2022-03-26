//
//  SwiftUIView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct ConversationView: View {
    
    @State private var showNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color(.systemGroupedBackground).ignoresSafeArea()
           
            
            ScrollView{
                VStack(alignment: .leading){
                    
                   
                    ForEach((0 ..< 10), id : \.self ){ _ in
                        ConversationCell()
                            .padding(.horizontal)
                    }
                    
                    
                }.padding(.top)
                
                
                
                
                
                
                
            }
      
            Button(action:{showNewMessageView.toggle()}){
                Image(systemName: "square.and.pencil")
                    .resizable().scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 24, height: 24)
                    .padding()
                
            }.background(Color.accentColor).clipShape(Circle()).padding().sheet(isPresented: $showNewMessageView, content: {NewMessageView()})
            
        
        
        }//END OF ZSTACK
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
