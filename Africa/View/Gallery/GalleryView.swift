//
//  GalleryView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
      ScrollView(showsIndicators: false) {
        
      }
      .background(MotionAnimationView())
      .edgesIgnoringSafeArea(.top)
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
