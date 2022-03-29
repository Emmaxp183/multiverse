//
//  RegistrationView.swift
//  multiverse
//
//  Created by admin on 08/03/2022.
//

import Firebase
import SwiftUI

struct RegistrationView: View {
    
    //PROPERTIES
    @State var email : String = ""
    @State var username : String = ""
    @State var fullname : String = ""
    @State var password : String = ""
    @Environment(\.presentationMode) var mode
    @ObservedObject var viewModel = AuthViewModel()
    
    var body: some View {
       
        VStack {
            
            
            VStack(alignment: .leading,spacing:3) {
               
               
                VStack(alignment: .leading) {
                    Text("Get Started")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Text("Create your Account.")
                        .font(.system(size: 30, weight: .heavy, design: .rounded)).foregroundColor(Color(red: 0.295, green: 0.428, blue: 0.395))
                    
                }.padding(.leading,25)
               
                
                //TEXFIELD
             
                VStack(spacing: 32){
                   
                    //EMAIL
                    CustomTextField(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                   
                    //USERNAME
                    CustomTextField(imageName: "person.text.rectangle", placeholderText: "Username", isSecureField: false, text: $username)
                   
                    //FULL NAME
                    CustomTextField(imageName: "person", placeholderText: "Full name", isSecureField: false, text: $fullname)
                   
                    //SECURED FIELD //PASSWORD
                    CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
                   
                    
                    
                    
                }.padding([.top,.horizontal],32)
                
                ///END
                
                
              
          
            }.padding()
           
            Button(action:{
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
              
            }){
                
                Text("Sign Up").fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(red: 0.309, green: 0.448, blue: 0.411))
                    .cornerRadius(13)
            }.padding(.top,10)
            
            Spacer()
            ///DOWN TEXT
            
            Button(action:{ mode.wrappedValue.dismiss()    }, label: {
                
                
                
                HStack{
                   
                    Text("Already Have An Account!").font(.subheadline)
                        .foregroundColor(.gray)
                    Text("Sign In").fontWeight(.heavy).foregroundColor(Color(red: 0.309, green: 0.448, blue: 0.411))
                    
                }.padding(.horizontal,30).padding(.bottom,10)
            
                
                
            })
           
            
            
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
}
