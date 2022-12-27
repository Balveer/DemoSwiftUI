//
//  HomeTabbar.swift
//  TabbarDemo
//
//

import SwiftUI



struct HomeTabbar: View {

    @State private var defaultView : Int = 2
    var body: some View {
        TabView(selection: $defaultView){
            HomeView()
                .tabItem {
                    Text("Products")
                    Image(systemName: "house")
                }.tag(0)

            FavView()
                .tabItem {
                    Text("Fav")
                    Image(systemName: "play")
                }.tag(1)

        }.accentColor(.red)
    }
}

struct HomeTabbar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabbar()
    }
}
