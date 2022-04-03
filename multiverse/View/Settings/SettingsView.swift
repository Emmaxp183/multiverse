//
//  SettingsView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
   
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).ignoresSafeArea()
            
            
            VStack{
                //SETTINGS
                NavigationLink(destination: EditProfileView(), label:  {SettingsHeaderView()})
               
                
                VStack(spacing: -7.0) {
            ForEach(SettingsCellViewModel.allCases, id: \.self) { insertViewModel in
                        SettingsCellView(insertViewModel:insertViewModel)
                    }
                }.cornerRadius(17).padding()
                
                
                SettingsButtonView()
                Spacer()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
