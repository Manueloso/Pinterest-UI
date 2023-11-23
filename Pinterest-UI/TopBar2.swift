//
//  TopBar2.swift
//  Pinterest-UITests
//
//  Created by manuel on 16/11/23.
//

import SwiftUI

struct TopBar2: View {
    @State private var selectedCategory: String = "All"

    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 393, height: 51.2931)
            .background(.white)
            .shadow(color: .black.opacity(0.05), radius: 1, x: 0, y: 1)
            .frame(width: 393, height: 45.13793)
            .background(.white)
            .overlay(
                HStack(spacing: 50) {
                    Text("All")
                        .font(
                            Font.custom("SF UI Display", size: 14.5)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedCategory == "All" ? .black : .gray) // Adjust the color based on selection
                        .padding(.bottom, 7)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(selectedCategory == "All" ? Color.black : Color.clear)
                                .frame(height: 3), // <- thickness of line
                            alignment: .bottom
                        )
                        .onTapGesture {
                            selectedCategory = "All"
                        }

                    Text("For you")
                        .font(
                            Font.custom("SF UI Display", size: 14.5)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedCategory == "For you" ? .black : .gray) // Adjust the color based on selection
                        .padding(.bottom, 7)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(selectedCategory == "For you" ? Color.black : Color.clear)
                                .frame(height: 3), // <- thickness of line
                            alignment: .bottom
                        )
                        .onTapGesture {
                            selectedCategory = "For you"
                        }
                }
            )
    }
}

// Preview code remains the same


#Preview {
    TopBar2()
}
