//
//  BuildingListsAndNavigation.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/18.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct BuildingListsAndNavigation: View {
    
    var body: some View {
        LandmarkList().environmentObject(UserData())
    }
}

#if DEBUG
struct BuildingListsAndNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BuildingListsAndNavigation()
    }
}
#endif
