//
//  ContentView.swift
//  Landmarks
//
//  Created by Garima Bothra on 31/07/20.
//  Copyright © 2020 Garima Bothra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLandmark: Landmark?

    var body: some View {
        NavigationView {
            NavigationPrimary(selectedLandmark: $selectedLandmark)

            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
        }
            .frame(minWidth: 700, minHeight: 300)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
