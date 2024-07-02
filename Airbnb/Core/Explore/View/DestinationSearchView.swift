//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 30/06/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuest = 0
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                    }
                Spacer()
                if !destination.isEmpty {
                    Button(action: {
                        destination = ""
                    }, label: {
                        Text("Clear")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    })
                }
            }
            .padding()
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search Destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }else {
                    CollapsedPickerView(title: "Where", description: "Add Destination")
                }
            }
            .modifier(CollapsibleSearchViewViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            // date selection view
            VStack(alignment: .leading) {
                            if selectedOption == .dates {
                                    Text("When's your trip ?")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    VStack {
                                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                                        Divider()
                                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                                    }
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.gray)
                            } else {
                                CollapsedPickerView(title: "When", description: "Add dates")
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        withAnimation(.snappy) { selectedOption = .dates }
                                        }
                            }
                        }
            .modifier(CollapsibleSearchViewViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            // num guests view
            VStack {
                if selectedOption == .guests {
                    Text("Who's coming")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Stepper(
                        onIncrement: { 
                            numGuest += 1
                        },
                        onDecrement: { 
                            guard numGuest > 0 else {return}
                            numGuest -= 1
                        },
                        label: {
                            Text("\(numGuest) Adults")
                        })
                }else {
                    CollapsedPickerView(title: "Who", description: "Add Guests")
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation(.snappy) { selectedOption = .guests }
                            }
                }
            }
            .modifier(CollapsibleSearchViewViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
