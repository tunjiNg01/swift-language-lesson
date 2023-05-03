//
//  LazoutViews.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 28/04/2023.
//

import SwiftUI

struct LazoutViews: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            LazyVStack(alignment: .leading, spacing: 20, pinnedViews: .sectionHeaders){
                Section{
                    ForEach(1...100, id: \.self ){
                        Text("Column \($0)")
                    }
                }header: {
                    Text("Head Text Pinned")
                    
                        .font(.headline)
                    
                        .frame(width: 400, height: 200)
                        .background{
                            Color.blue
                        }
                    
                }
                
            }
            
        }
    }
}

struct LazoutViews_Previews: PreviewProvider {
    static var previews: some View {
        LazoutViews()
    }
}
