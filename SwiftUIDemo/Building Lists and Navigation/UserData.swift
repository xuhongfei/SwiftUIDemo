//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by Xu, Freddy on 2019/8/19.
//  Copyright © 2019 XuHongfei. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var lanmarks = landmarkData
}
