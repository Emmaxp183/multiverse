//
//  multiverseApp.swift
//  multiverse
//
//  Created by admin on 08/03/2022.
//

import SwiftUI
import Firebase

@main
struct multiverseApp: App {
    
    init(){
        FirebaseApp.configure()
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
