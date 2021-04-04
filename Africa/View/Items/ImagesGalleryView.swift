//
//  ImagesGalleryView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI

struct ImagesGalleryView: View {
  let animal: Animal
  
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 15) {
          ForEach(animal.gallery, id: \.self) { image in
            Image(image)
              .resizable()
              .scaledToFit()
              .frame(height: 200)
              .cornerRadius(12)
          }
        } //: HStack
      } //: ScrollView
    }
}


