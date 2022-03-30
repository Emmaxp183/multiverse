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
               //USER DATA FOR FIRESTORE
            guard let user = results?.user else {return}
            let data : [String: Any] = ["email":email,"username":username,"fullname":fullname]
            
            Firestore.firestore().collection("user").document(user.uid).setData(data){ _ in
                print("DEBUG: Succesfully updated user info in firestore")
                
                
                
            }
            
        }
        
    }
   
    
    func uploadProfileImage(){
        
    }
   
    
    
    func signout(){
        
        
        
    }
    
    
}
