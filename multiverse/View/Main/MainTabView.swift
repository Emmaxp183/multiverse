//
//  MainView.swift
//  multiverse
//
//  Created by admin on 10/03/2022.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ChatView()
                .tabItem {
                    Image(systemName: "ellipsis.bubble")
                    Text("Chat")
                }
            ChannelView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Channel")
                }
            
            NewFeedView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("News Feed")
                }
       
        SettingsView()
            .tabItem {
                Image(systemName: "gearshape")
                Text("Settings")
            
        }
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .preferredColorScheme(.dark)
    }
}
}
