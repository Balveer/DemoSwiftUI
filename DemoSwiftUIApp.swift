//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by Sudhir Saini on 27/12/22.
//

import SwiftUI


final class FavObj : ObservableObject{
    @Published var favArray:String = String()
}

@main
struct DemoSwiftUIApp: App {
    @ObservedObject private var prodID: ProductID = ProductID()
    var body: some Scene {
        WindowGroup {
            HomeTabbar()

            //ContentView()
        }
    }
}
