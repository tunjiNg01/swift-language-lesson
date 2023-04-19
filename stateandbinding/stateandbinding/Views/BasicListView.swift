//
//  BasicListView.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import SwiftUI

struct BasicListView: View {
    var body: some View {
        List {
            ForEach(staff){
                person in
                PersonRowView(person: person)
                    
            }
            .listRowSeparator(.automatic)
        }
    }
}

struct BasicListView_Previews: PreviewProvider {
    static var previews: some View {
        BasicListView()
    }
}
