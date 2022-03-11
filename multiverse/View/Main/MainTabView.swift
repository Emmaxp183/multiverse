//
//  MainView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct MainTabView: View {
    // PROPERTIES
    @State private var SelectedIndex = 0
    
    var body: some View {
        NavigationView {
            TabView (selection : $SelectedIndex){
                ChatView()
                    .onTapGesture{
                        SelectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "ellipsis.bubble")
                        
                    }
                    .tag(0)
                ChannelView()
                    .onTapGesture{
                        SelectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "person.3")
                     
                    }
                    .tag(1)
                NewFeedView()
                    .onTapGesture{
                        SelectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "list.bullet.rectangle")
                       
                    }
                    .tag(2)
           
            SettingsView()
                    .onTapGesture{
                        SelectedIndex = 3
                    }
                .tabItem {
                    Image(systemName: "gearshape")
                    
                
            }
                .tag(3)
            }
            
                .navigationTitle(tabTitle)
        }
}
    var tabTitle : String {
        switch SelectedIndex {
        case 0 : return "Chats"
        case 1 : return "Channel"
        case 2 : return "News Feed"
        case 3 : return "Settings"
            
            
        default: return ""
            
        }
        
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .preferredColorScheme(.light)
    }
}
}
