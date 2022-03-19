//
//  StatusSelectorView.swift
//  multiverse
//
//  Created by admin on 19/03/2022.
//

import SwiftUI

struct StatusSelectorView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            ScrollView{
               
                VStack(alignment: .leading, spacing: 0.0){
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()
                   
                    HStack{
                        
                        Text("Available")
                        Spacer()
                        
                    }.padding().background(Color.white)
                    
                  
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    
                    //LOOPING
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        VStack(spacing: 2.0) {
                            Divider()
                            HStack{
                                
                                Text("Available")
                                    .padding()
                                    Spacer()
                                
                            }.background(Color.white)
                           
                        }
                    }
                    
                    
                }
                
                
            
                
                
            }
       
        
        
        
        }
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectorView()
    }
}
