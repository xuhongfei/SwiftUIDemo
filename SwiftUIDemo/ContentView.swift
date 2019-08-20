//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/15.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CreatingAndCombingViews(landmark: landmarkData[0])) {
                    Text("Creating and Combing Views")
                }
                NavigationLink(destination: BuildingListsAndNavigation()) {
                    Text("Building Lists and Navigation")
                }
                NavigationLink(destination: LandmarkList().environmentObject(UserData())) {
                    Text("Handing User Input")
                }
            }.navigationBarTitle("SwiftUI Demo")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
