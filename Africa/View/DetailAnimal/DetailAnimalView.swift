//
//  DetailAnimalView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct DetailAnimalView: View {
  let animal: Animal
  
    var body: some View {
      ScrollView(showsIndicators: false) {
        VStack(spacing: 20) {
          Image(animal.image)
            .resizable()
            .scaledToFit()
          
          Text(animal.name)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .padding(.vertical, 8)
            .background(
              Color.accentColor
                .frame(height: 6)
                .offset(y: 24)
            )
          
          Text(animal.headline)
            .font(.headline)
            .foregroundColor(.accentColor)
            .padding(.horizontal)
          
          Group {
            HeadingView(image: "photo.on.rectangle.angled", text: "Wenderness in Pictures")
            
            ImagesGalleryView(animal: animal)
          }
          .padding(.horizontal)
        } //: VStack
        .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
      } //: Scroll
    }
}

