//
//  AnimatingViewsAndTransitions.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/20.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct AnimatingViewsAndTransitions: View {
    var body: some View {
        VStack {
            HikeView(hike: hikeData[0]).padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct AnimatingViewsAndTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingViewsAndTransitions()
    }
}
#endif
