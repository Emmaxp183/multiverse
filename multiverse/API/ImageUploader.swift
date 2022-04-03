//
//  ImageUploader.swift
//  multiverse
//
//  Created by admin on 01/04/2022.
//

import Firebase
import UIKit


struct ImageUploader {
    static func uploadImage(image: UIImage, completion : @escaping(String) -> Void){
       
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {return}
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        
        
        ref.putData(imageData, metadata: nil){_, error in
            if let error = error{
                print("DEBUG: Failed to uplaod image with error \(error.localizedDescription)")
                return
            }
            print("DEBUG: Succesfully uploaded image to firestore stroage...")
            
            ref.downloadURL{ url, _ in
                            guard let imageUrl = url?.absoluteString else{return}
                            completion(imageUrl)
            
        }
        
        
    }
    
}

}
