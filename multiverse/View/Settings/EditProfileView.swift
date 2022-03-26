import SwiftUI

struct EditProfileView: View {
    @State private var fullName = "Emmanuel Mensah"
    @State private var profileImage: Image?
    @State  private var ShowImagePicker =  false
    @State  private var selectedImage:UIImage?
   
    var body: some View {
        //HEADER VIEW
        ZStack {
            Color(.systemGroupedBackground).ignoresSafeArea()
            VStack(alignment: .leading) {
                VStack {
                    ZStack {
                        if let profileImage = profileImage {
                            profileImage
                                .resizable().scaledToFit().clipShape(Circle())
                                .frame(width: 150, height: 200)
                        }else{
                            
                            Image("Image").resizable().scaledToFit().clipShape(Circle())
                                .frame(width: 150, height: 200)
                            
                            
                        }
                        //UPATE PROFILE PHOTO BUTTON
                Button(action:{ShowImagePicker.toggle()}){
                            
                            VStack {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.accentColor)
                                    .offset(x: 60, y: 40)
                                    .frame(width: 150, height: 200)
                                    
                            }
                            
                }.sheet(isPresented: $ShowImagePicker, onDismiss: loadImage){
                ImagePicker(image: $selectedImage)
                    
                }
                    // END OF BUTTON
                  
                    }//END OF ZSTACK
                    
                    //INFO OF PROFILE
                    
                    VStack(spacing: 10) {
                        Text("Enter your name or change your profile photo")
                            .foregroundColor(.gray)
                            .font(.subheadline).bold()
                        
                        Divider().padding(.top,14)
                        
                        
                        //USER NAME OR TEXT FIELD
                        
                    TextField("",text: $fullName).font(.system(size: 22, weight: .bold, design: .rounded)).multilineTextAlignment(.center)
                            .foregroundColor(.black)
                      
                        //END OF TEXT FIELD
            
                    }
                    
                
                }.padding([.top,.bottom],40).background(Color.white).cornerRadius(17).padding()
                //STATUS INFOR 
                Text("Status").bold().foregroundColor(.gray).padding(.leading,20)
              
                //STATUS ZONE
                NavigationLink(destination:StatusSelectorView(),label: {
                    
                    HStack {
                        Text("At the movie").bold().foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right").foregroundColor(.accentColor)
                    }.padding().background(Color.white).cornerRadius(17).padding()
                    
                    
                    
                })
               
                //END OF STATUS
               
                Spacer()
            }
        
        
            
        }.navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Edit Profile")
        /////end
        
        
    }
    func loadImage(){
        guard let selectedImage = selectedImage else {return}

      profileImage = Image (uiImage: selectedImage)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
            .preferredColorScheme(.light)
    }
}
