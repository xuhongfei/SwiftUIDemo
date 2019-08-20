//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/18.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
//        NavigationView {
//        }
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: CreatingAndCombingViews(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        // "iPhone SE", "iPhone XS"
//        ForEach(["iPhone XS"], id: \.self) { deviceName in
        LandmarkList().environmentObject(UserData())
    }
}
#endif
