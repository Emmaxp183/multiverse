//
//  SettingsCellView.swift
//  multiverse
//
//  Created by admin on 11/03/2022.
//

import SwiftUI

struct SettingsCellView: View {
    //PROPERTIES
    let insertViewModel : SettingsCellViewModel
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: insertViewModel.ImageName)
                    .resizable().scaledToFit()
                    .foregroundColor(.white)
                    
                    .frame(width: 25, height:25)
                    .padding(6)
                    
                    .background(insertViewModel.BackgroundColor)
                    .cornerRadius(10)
                
                   
                
                Text(insertViewModel.title)
                    .foregroundColor(.accentColor)
                    .bold()
                   
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    
           
            }.padding().background(Color.white)
            Divider()
        }
    }
}

