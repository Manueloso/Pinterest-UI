//
//  Post.swift
//  Pinterest-UI
//
//  Created by manuel on 16/11/23.
//

import SwiftUI

struct Post: Identifiable, Hashable {
    var id = UUID().uuidString
    var imageURL: String
}
