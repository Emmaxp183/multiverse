//
//  SearchBar.swift
//  multiverse
//
//  Created by admin on 26/03/2022.
//

import SwiftUI

struct SearchBar: View {
    //PROPERTIES FOR SEARCH BAR
    
    @Binding var text: String
    // EXITING EDITTING
    @Binding var isEditing:Bool
    @State var show = false
    
    var body: some View {
       
        
        HStack {
            TextField("Search...", text :$text)
                .padding()
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .foregroundColor(.gray).overlay{
                   
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(8)
                    
            }
            if isEditing{
                
                Button(action: {
                    isEditing = false
                    text = ""
                    
                    //need to dismiss keyboard//with extention
                    UIApplication.shared.endEditing()
                }){
                    Text("Cancel")
                        .foregroundColor(.black)
                }.padding(8).transition(.move(edge: .trailing)).animation(.easeIn(duration: 2), value: show)
                
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."), isEditing: .constant(false))
    }
}
