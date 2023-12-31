//
//  DemoApp.swift
//  Demo
//
//  Created by 沈 立竑 on 2023/07/17.
//

import SwiftUI

@main
struct DemoApp: App {
    let store = HomeStore(
        initial: HomeState(items: []),
        reducer: homeReducer,
        middlewares: [homeAPIMiddleware])
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(store)
        }
    }
}
