//
//  EditProfileView.swift
//  multiverse
//
//  Created by admin on 14/03/2022.
//

import SwiftUI

struct EditProfileView: View {
   //PROPERTIES
    @State var fullName = "Emmanuel Mensah"
    
    //IMAGE PICKER
    @State var ShowImagePicker =  false
    
    
    var body: some View {
       //HEADER PROFILE
        ZStack {
            
            //BACKGROUND COLOR
            Color(.systemGroupedBackground).ignoresSafeArea()
        
            VStack(alignment: .leading) {
                
                HeaderProfileView()
           
                //STATUS VIEW
                Text("Status").bold().foregroundColor(.gray).padding(.leading,20)
                NavigationLink(destination: StatusSelectorView(), label: {
                   
                    
                    
                    HStack {
                        Text("At the movie").bold().foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right").foregroundColor(.accentColor)
                    }.padding().background(Color.white).cornerRadius(17).padding()
                   
                
                })
                
            
            Spacer()
            
            
           
            
            }
              
             
              
         
                
          
               
           
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        
      
        
        }
   
    }


struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

struct HeaderProfileView: View {
    @State var fullName = "Emmanuel Mensah"
    
    //IMAGE PICKER
    @State var ShowImagePicker =  false
    
    //IMAGE PROPERTIE
    @State private var selectedImage:UIImage?
   
    var body: some View {
        VStack{
            //HEADER
            Image("Image").resizable().scaledToFit().clipShape(Circle())
                .frame(width: 150, height: 200).overlay{
                    
                    
                    // EDIT PROFILE PICTURE
                    Button(action:{
                        ShowImagePicker.toggle()
                    }){
                        
                        VStack {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.accentColor)
                                .frame(width: 150, height: 200)
                                .offset(x: 60, y: 50)
                        }
                        
                        
                        
                        
                    }.sheet(isPresented: $ShowImagePicker){
                        
                        ImagePicker(image: $selectedImage)
                        
                    }
                    
                    
                    
                }
            
            
            //INFO OF PROFILE
            
            VStack(spacing: 10) {
                Text("Enter your name or change your profile photo")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                
                
                
                
                Divider().padding(.top,14)
                
                
                
                
                TextField("",text: $fullName).font(.system(size: 22, weight: .bold, design: .rounded)).multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                
                
                
                
                
            }
            
            
        }.padding([.top,.bottom],40).background(Color.white).cornerRadius(17).padding()
    }
}
