//
//  UserCell.swift
//  multiverse
//
//  Created by admin on 26/03/2022.
//

import SwiftUI

struct UserCell: View {
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
                    Text("@ImmaXp")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
             }
            Spacer()
          
            }.foregroundColor(.black)
      
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
