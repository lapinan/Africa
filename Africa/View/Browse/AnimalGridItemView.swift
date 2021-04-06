//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Андрей Лапин on 07.04.2021.
//

import SwiftUI

struct AnimalGridItemView: View {
  let animal: Animal
  
    var body: some View {
      Image(animal.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}
