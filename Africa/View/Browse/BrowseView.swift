//
//  ContentView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
      NavigationView {
        ScrollView(showsIndicators: false) {
          CoverImageView()
            .frame(height: 300)
  
        } //: ScrollView
        .navigationBarTitle(Text("Africa"), displayMode: .large)
      } //: NavigationView
    }
}

