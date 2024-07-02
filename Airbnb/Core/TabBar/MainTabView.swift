//
//  MainTabView.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selected = 0
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { 
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .onAppear{
                    selected = 0
                }
            
            WIshListsView()
                .tabItem { 
                    Label("Wishlists", systemImage: "heart")
                        .environment(\.symbolVariants, selected == 1 ? .fill : .none)
                }
                .onAppear{
                    selected = 1
                }
            
            ProfileView()
                .tabItem { 
                    Label("Profile", systemImage: "person")
                        .environment(\.symbolVariants, selected == 2 ? .fill : .none)
                }
                .onAppear{
                    selected = 2
                }
        }
        .tint(.pink)
    }
}

#Preview {
    MainTabView()
}
