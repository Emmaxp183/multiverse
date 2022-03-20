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
                   
                    StatusCell(viewModel: StatusViewModel(rawValue: 0)!)
                    
                  
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    
                    //LOOPING
                 
                    ForEach(StatusViewModel.allCases.filter({$0 != .notConfigured}), id: \.self ) { viewModel in
                        VStack(spacing: 2.0) {
                            Divider()
                          
                            Button(action : {}){
                                
                                StatusCell(viewModel: viewModel)
                                
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
    let viewModel : StatusViewModel
    var body: some View {
        HStack{
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .bold()
            Spacer()
            
        }.padding().background(Color.white)
    }
}
