//
//  AuthViewModel.swift
//  multiverse
//
//  Created by admin on 29/03/2022.
//
import Firebase
import Foundation

class AuthViewModel: NSObject, ObservableObject{
    
    func login(){
        
        
    
    }
    
    func register(withEmail email: String, password: String, fullname:String, username: String){
       //
        Auth.auth().createUser(withEmail: email, password: password) { results, error in
            
            if let error = error{
              
                print("DEBUG: Faild to register with error\(error.localizedDescription)")
                
                return
            
            }
            print("DEBUG: Successfully registered user with firebase!!")
        }
        
    }
   
    
    func uploadProfileImage(){
        
    }
   
    
    
    func signout(){
        
        
        
    }
    
    
}
