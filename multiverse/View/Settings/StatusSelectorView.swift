//
//  StatusSelectorView.swift
//  multiverse
//
//  Created by admin on 19/03/2022.
//

import SwiftUI

struct StatusSelectorView: View {
    //PROPERTIES OF THE VIEW MODEL
    @ObservedObject var viewModel = StatusViewModel()
    
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            ScrollView{
               
                VStack(alignment: .leading, spacing: 0.0){
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()
                   
                    StatusCell(status: viewModel.status)
                    
                  
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    
                    //LOOPING
                 
                    ForEach(UserStatus.allCases.filter({$0 != .notConfigured}), id: \.self ) { status in
                        VStack(spacing: 2.0) {
                            Divider()
                          
                            Button(action : {viewModel.updateStatus(status)}){
                                
                                StatusCell(status: status )
                                
                            }
                            
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

struct StatusCell : View {
    let status : UserStatus
    var body: some View {
        HStack{
            
            Text(status.title)
                .foregroundColor(.black)
                .bold()
            Spacer()
            
        }.padding().background(Color.white)
    }
}
