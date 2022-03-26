//
//  ConversationCell.swift
//  multiverse
//
//  Created by admin on 25/03/2022.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4.0){
                    
                    Text("Emmanuel Mensah")
                        .bold()
                    Text("Hello World I Love My Wife Like Crazy")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                }
            }
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
