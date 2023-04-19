//
//  PersonRowView.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import SwiftUI

struct PersonRowView: View {
    var person: Person
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text(person.name)
                .font(.headline)
                .foregroundColor(.primary)
            HStack(spacing: 3){
                
                Label(person.phoneNumber, systemImage: "phone")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: Person(name: "Olatunji Hammed", phoneNumber: "+234 8188659959"))
    }
}
