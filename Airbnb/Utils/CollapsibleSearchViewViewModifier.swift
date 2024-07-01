//
//  CollapsibleSearchViewViewModifier.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import Foundation
import SwiftUI

struct CollapsibleSearchViewViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
