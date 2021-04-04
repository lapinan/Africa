//
//  CoverImageView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct CoverImageView: View {
  
  let images = Bundle.main.decode("covers.json")
  
    var body: some View {
      TabView {
        ForEach(images) { image in
          Image(image.name)
            .resizable()
            .scaledToFill()
        } //: Loop
      } //: TabView
      .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
