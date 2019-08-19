//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/18.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        NavigationView {
//        }
            List(landmarkData) { landmark in
                NavigationLink(destination: CreatingAndCombingViews(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS"], id: \.self) { deviceName in
            LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
#endif
