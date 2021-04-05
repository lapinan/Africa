//
//  DetailAnimalView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct DetailAnimalView: View {
  let animal: Animal
  @State private var isAnimation = false
  
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
          
          Group {
            HeadingView(image: "questionmark.circle", text: "Did yout know?")
            
            AnimalFactsView(animal: animal)
          }
          .padding(.horizontal)
          
          Group {
            HeadingView(image: "info.circle", text: "All about \(animal.name)")
            
            Text(animal.description)
          }
          .padding(.horizontal)
          
          Group {
            HeadingView(image: "map", text: "National Parks")
            
            MapDetailAnimalView()
          }
          .padding(.horizontal)
          
          Group {
            HeadingView(image: "books.vertical", text: "Lear more")
            LinkItemView(animal: animal)
          }
          .padding([.horizontal, .bottom])
        } //: VStack
        .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        .scaleEffect(isAnimation ? 1.0 : 0.6)
      } //: Scroll
      .onAppear() {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimation = true
        }
      }
    }
}

