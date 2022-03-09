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
        
        
        
        NavigationView {
            VStack {
                Image("image1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: .center)
                
                VStack(alignment: .leading,spacing:3) {
                   
                   
                    Text("Welcome To")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Text("Multiverse")
                        .font(.system(size: 35, weight: .heavy, design: .rounded)).foregroundColor(Color(red: 0.295, green: 0.428, blue: 0.395))
                    
                    
                    //TEXFIELD
                    
                    VStack(spacing: 15.0){
                        
                        CustomTextField(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                       
                        //SECURED FIELD
                        CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
                       
                        
                        
                        
                    }.padding([.top,.horizontal],32)
                    
                    ///END
                    
                    
                    
                    Spacer()
                }.padding()
                
               
                
                // RESET PASSWORD
                
                NavigationLink(destination: Text("Reset password")) {
                    
                    HStack{
                        Spacer()
                        Text("Reset password")
                            .fontWeight(.heavy)
                            .font(.subheadline)
                            .foregroundColor(Color(red: 0.309, green: 0.448, blue: 0.411))
                        
                    }.padding(.horizontal,32)
               
                } //END
                
                
                
                
                ///BUTTON
                
                Button(action:{}){
                    
                    Text("Sign In").fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(red: 0.309, green: 0.448, blue: 0.411))
                        .cornerRadius(13)
                }.padding(.bottom,50)
               /// END OF BUTTON
              
                //SIGN UP
                NavigationLink(destination: RegistrationView()) {
                   
                    HStack{
                       
                        Text("Dont Have Account!").font(.subheadline)
                            .foregroundColor(.gray)
                        Text("SignUp").fontWeight(.heavy).foregroundColor(Color(red: 0.309, green: 0.448, blue: 0.411))
                        
                    }.padding(.horizontal,30).padding(.bottom,10)
                
                
                
            }//END
                
                
                
                
     
        }.padding(.top,-79)
    } .navigationBarBackButtonHidden(true)
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
}
