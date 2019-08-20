//
//  CreatingAndCombingViews.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/16.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct CreatingAndCombingViews: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.lanmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button(action: {
                        self.userData.lanmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.lanmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star").foregroundColor(.gray)
                        }
                    }
                }
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
            .environmentObject(UserData())
    }
}
#endif
