//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Garima Bothra on 31/07/20.
//  Copyright © 2020 Garima Bothra. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    @Binding var selectedLandmark: Landmark?

    var body: some View {
        List(selection: $selectedLandmark) {
            ForEach(userData.landmarks) { landmark in
                LandmarkRow(landmark: landmark).tag(landmark)
            }
        }
    }
    }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(selectedLandmark: .constant(landmarkData[0]))
            .environmentObject(UserData())
    }
}
