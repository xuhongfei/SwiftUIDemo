//
//  RotatedBadgeSymbol.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/20.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 1))
    }
}
#endif
