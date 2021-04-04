//
//  MainTabView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
      TabView {
        BrowseView()
          .tabItem {
            Image(systemName: "square.grid.2x2")
            Text("Browse")
          }
        
        VideoListView()
          .tabItem {
            Image(systemName: "play.rectangle")
            Text("Watch")
          }
        
        MapView()
          .tabItem {
            Image(systemName: "map")
            Text("Locations")
          }
        
        GalleryView()
          .tabItem {
            Image(systemName: "photo")
            Text("Gallery")
          }
      } //: TabView
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
