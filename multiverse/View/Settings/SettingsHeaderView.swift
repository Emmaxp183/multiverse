//
//  SettingsHeaderView.swift
//  multiverse
//
//  Created by admin on 11/03/2022.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack(spacing : 20) {
           //IMAGE
            
           Image("Image").resizable().scaledToFit()
               
               .frame(width: 64, height: 64)
               .clipShape(Circle())
               .cornerRadius(17)
               
            
           VStack(alignment: .leading, spacing: 5) {
               Text("Emmanuel Mensah").font(.system(size: 25, weight: .semibold, design: .rounded))
                   .foregroundColor(.black)
                   
                ///STATUS
                Text("Hope for what you do not see").font(.subheadline)
                    .foregroundColor(.gray)
               
           }
         
        }.frame(maxWidth: .infinity).padding().background(Color.white).cornerRadius(17).padding()
    }
}

struct SettingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsHeaderView()
            .preferredColorScheme(.light)
    }
}
