//
//  CreatingAndCombingViews.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/16.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct CreatingAndCombingViews: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct CreatingAndCombingViews_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAndCombingViews(landmark: landmarkData[0])
    }
}
#endif
