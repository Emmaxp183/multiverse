//
//  AuthViewModel.swift
//  multiverse
//
//  Created by admin on 29/03/2022.
//
import Firebase

import UIKit

class AuthViewModel: NSObject, ObservableObject{
  
    @Published var didAuthenticateUser = false
    @Published var userSession: FirebaseAuth.User?
    private var tempCurrentUser : FirebaseAuth.User?
    static let shared = AuthViewModel()
    
    override init(){
        super.init()
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String, password: String){
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            
            if let error = error{
              
                print("DEBUG: Faild to sign in with error\(error.localizedDescription)")
                
                return
            
            }
          
            self.userSession = result?.user
        }
    
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
            self.tempCurrentUser = user
            let data : [String: Any] = ["email":email,"username":username,"fullname":fullname]
            
            Firestore.firestore().collection("user").document(user.uid).setData(data){ _ in
               
                
                self.didAuthenticateUser = true
                
                
                
            }
            
        }
        
    }
   
    
    func uploadProfileImage(_ image : UIImage){
        guard let uid = tempCurrentUser?.uid else {
           
         return
            
        }
               ImageUploader.uploadImage(image: image) { imageUrl in
               Firestore.firestore().collection("users").document(uid).updateData(["profileImageUrl" : imageUrl]) { _ in
                   self.userSession = self.tempCurrentUser
            }
        }
        
    }
   
    
    
    func signout(){
        self.userSession = nil
        try? Auth.auth().signOut()
       
        
    }
    
    func fetchUser(){
        
        guard let uid = userSession?.uid else {
            return
        }
        Firestore.firestore().collection("user").document(uid).getDocument { snapshot, _ in
            guard let data = snapshot?.data() else {return}
            print(data)
        }
        
    }
    
}
