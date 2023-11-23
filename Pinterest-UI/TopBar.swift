//
//  TopBar.swift
//  Pinterest-UI
//
//  Created by manuel on 15/11/23.
//

import SwiftUI

struct TopBar: View {
    @State private var selectedCategory: String = "All"

    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(Color(UIColor.systemBackground)) // Use systemBackground for adaptive color
            .shadow(color: .clear, radius: 0, x: 0, y: 0)
            .frame(width: 392, height: 26)
            .background(Color(UIColor.systemBackground)) // Use systemBackground for adaptive color
            .overlay(
                HStack(spacing: 50) {
                    Text("All")
                        .font(
                            Font.custom("SF UI Display", size: 14.5)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedCategory == "All" ? .black : .gray)
                        .padding(.bottom, 20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(selectedCategory == "All" ? Color.black : Color.clear)
                                .frame(height: 3)
                                .opacity(selectedCategory == "All" ? 1.0 : 0.0)
                        )
                        .onTapGesture {
                            withAnimation {
                                selectedCategory = "All"
                            }
                        }

                    Text("For you")
                        .font(
                            Font.custom("SF UI Display", size: 14.5)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(selectedCategory == "For you" ? .black : .gray)
                        .padding(.bottom, 21)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(selectedCategory == "For you" ? Color.black : Color.clear)
                                .frame(height: 3)
                                .opacity(selectedCategory == "For you" ? 1.0 : 0.0)
                        )
                        .onTapGesture {
                            withAnimation {
                                selectedCategory = "For you"
                            }
                        }
                }
                .animation(.easeInOut)
            )
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TopBar()
                .environment(\.colorScheme, .light)
            TopBar()
                .environment(\.colorScheme, .dark)
        }
    }
}
