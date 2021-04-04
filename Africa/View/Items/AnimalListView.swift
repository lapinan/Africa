//
//  AnimalsListView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct AnimalListView: View {
  let animal: Animal
  
    var body: some View {
      HStack(spacing: 16) {
        Image(animal.image)
          .resizable()
          .scaledToFill()
          .frame(width: 90, height: 90)
          .clipped()
          .cornerRadius(12)
        
        VStack(alignment: .leading ) {
          Text(animal.name)
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundColor(.accentColor)
          
          Text(animal.headline)
            .font(.footnote)
            .lineLimit(2)
            .padding(.trailing, 8)
        } //: VStack
      } //: HStack
    }
}

