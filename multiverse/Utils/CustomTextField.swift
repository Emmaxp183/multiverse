//
//  CustomTextFied.swift
//  multiverse
//
//  Created by admin on 09/03/2022.
//

import SwiftUI

struct  CustomTextField: View {
    let imageName : String
    let placeholderText: String
    let isSecureField:Bool
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: 16.0) {
            HStack {
                Image(systemName: imageName).foregroundColor(.gray)
                if isSecureField{
                    SecureField(placeholderText, text: $text)
                }else{
                    TextField(placeholderText,text: $text)
                }
                
                
               
            }
            
            
            Divider()
                .padding(.bottom,10)
        }
    }
}


