//
//  ProfilePhotoSelectorView.swift
//  multiverse
//
//  Created by admin on 30/03/2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var imagePickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Button(action: { imagePickerPresented.toggle() }, label: {
                
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                } else {
                   Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 44)
                        .foregroundColor(.gray)
                }
            })
            .sheet(isPresented: $imagePickerPresented,
                   onDismiss: loadImage, content: {
                ImagePicker(image: $selectedImage)
            })
            
            Text(profileImage == nil ? "Select a profile photo" : "Great! Tap below to continue")
                .font(.system(size: 20, weight: .semibold)).padding()
            
            if let image = selectedImage {
                Button(action:{
                    viewModel.uploadProfileImage(image)
                    
                }){
                    
                    Text("Continue").foregroundColor(.white).bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                }.background(Color(red: 0.3, green: 0.439, blue: 0.403)).cornerRadius(15).padding()
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
