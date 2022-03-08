//
//  LoginView.swift
//  multiverse
//
//  Created by admin on 08/03/2022.
//

import SwiftUI

struct LoginView: View {
    //LOGIN PROPERTIES
    @State var email : String = ""
    @State var password : String = ""
    
    
    

    var body: some View {
        
        
        
        VStack(alignment: .leading,spacing:0.5) {
            Image("image1")
                .resizable()
                .scaledToFit()
           
            Text("Welcome To")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            Text("Multiverse")
                .font(.system(size: 35, weight: .heavy, design: .rounded)).foregroundColor(Color(red: 0.295, green: 0.428, blue: 0.395))
           
            
            //TEXFIELD & SECURED FIELD
            
            VStack{
                
                TextField("Email",text: $email )
                SecureField("Password", text: $password)
                
                
                
            }.padding()
            
            
            
            
            
            Spacer()
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
