//
//  SavedPostsView.swift
//  Pinterest-UI
//
//  Created by manuel on 21/11/23.
//

import SwiftUI

struct SavedPostsView: View {
    @State private var savedPosts: [Post] = []

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(savedPosts, id: \.id) { post in
                        
                        Text("Under Construction >:( \(post.id)")
                    }
                }
                .padding()
            }
            .navigationTitle("Under Construction >:(")
        }
    }
}

#Preview {
    SavedPostsView()
}
