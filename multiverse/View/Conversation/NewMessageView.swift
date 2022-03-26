//
//  NewMessageView.swift
//  multiverse
//
//  Created by admin on 26/03/2022.
//

import SwiftUI

struct NewMessageView: View {
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                
               
                ForEach((0 ..< 10), id : \.self ){ _ in
                    UserCell()
                        .padding(.horizontal)
                }
                
                
            }.padding(.top)
            
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
