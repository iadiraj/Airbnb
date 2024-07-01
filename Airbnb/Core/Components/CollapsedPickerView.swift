//
//  CollapsedPickerView.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 30/06/24.
//

import SwiftUI

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}


#Preview {
    CollapsedPickerView(title: "When", description: "Add Dates")
}
