//
//  SettingsButtonView.swift
//  multiverse
//
//  Created by admin on 11/03/2022.
//

import SwiftUI

struct SettingsButtonView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        Button(action:{AuthViewModel.shared.signout()}){
            
            Text("Log Out").foregroundColor(.white).bold()
                .frame(maxWidth: .infinity)
                .padding()
            
        }.background(Color(red: 0.3, green: 0.439, blue: 0.403)).cornerRadius(15).padding()
    }
}

struct SettingsButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButtonView()
    }
}
