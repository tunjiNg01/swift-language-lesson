//
//  NestedListView.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import SwiftUI

struct NestedListView: View {
    var company: Company
    var body: some View {
        NavigationView{
            List {
                ForEach(company.departments){
                    department in
                    Section(header:Text(department.name).textCase(.none).foregroundColor(.blue)){
                        ForEach(department.staff){
                            person in
                            NavigationLink(destination: PersonRowView(person: person)){
                                PersonRowView(person: person)
                            }
                           
                        }
                        
                        .listRowSeparatorTint(.secondary)
                        
                    }
                    
                }
            }
        }
        .navigationTitle("Contact List")
    }
}

struct NestedListView_Previews: PreviewProvider {
    static var previews: some View {
        NestedListView(company: department)
    }
}
