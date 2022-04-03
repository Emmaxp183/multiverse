//
//  ContentView.swift
//  multiverse
//
//  Created by admin on 08/03/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
       
        Group{
            
            if viewModel.userSession != nil {
                MainTabView()
                
            }else{
                
               LoginView()
            }
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
