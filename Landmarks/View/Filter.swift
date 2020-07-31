//
//  Filter.swift
//  Landmarks
//
//  Created by Garima Bothra on 31/07/20.
//  Copyright © 2020 Garima Bothra. All rights reserved.
//

import SwiftUI

struct Filter: View {
    @EnvironmentObject private var userData: UserData

    var body: some View {
        HStack {
             Toggle(isOn: $userData.showFavoritesOnly) {
                 Text("Favorites only")
             }
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
            .environmentObject(UserData())
    }
}

struct FilterType: Hashable {
    var name: String
    var category: Landmark.Category?

    init(_ category: Landmark.Category) {
        self.name = category.rawValue
        self.category = category
    }
    
    init(name: String) {
        self.name = name
        self.category = nil
    }

    static var all = FilterType(name: "All")
}
