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
        TabView {
            CategoryHome().tabItem {
                Image(systemName: "6.square.fill")
                Text("Composing Complex Interfaces")
            }
            AnimatingViewsAndTransitions().tabItem {
                Image(systemName: "5.square.fill")
                Text("Animating Views and Transitions")
            }
            
            Badge().tabItem {
                Image(systemName: "4.square.fill")
                Text("Drawing Paths and Shapes")
            }
            LandmarkList().environmentObject(UserData()).tabItem {
                Image(systemName: "3.square.fill")
                Text("Handing User Input")
            }
            NavigationView {
                BuildingListsAndNavigation()
            }.tabItem {
                Image(systemName: "2.square.fill")
                Text("Building Lists and Navigation")
            }
            NavigationView {
                LandmarkDetail(landmark: landmarkData[0]).environmentObject(UserData())
            }.tabItem {
                Image(systemName: "1.square.fill")
                Text("Creating and Combing Views")
            }
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
