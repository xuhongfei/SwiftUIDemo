//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/18.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
#endif
