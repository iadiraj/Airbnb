//
//  ProfileView.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Profile")
                    .font(.largeTitle)
                .fontWeight(.semibold)
                Text("Login to start planning your next trip")
            }
            Button{
                
            } label: {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 48)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            HStack {
                Text("Dont't have an account?")
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.caption)
        }
    }
}

#Preview {
    ProfileView()
}
