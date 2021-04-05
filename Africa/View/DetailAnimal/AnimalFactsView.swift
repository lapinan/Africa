//
//  AnimalFactsView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI

struct AnimalFactsView: View {
  let animal: Animal
  
    var body: some View {
      GroupBox {
        TabView {
          ForEach(animal.fact, id: \.self) { fact in
            Text(fact)
          }
        } //: TabView 
        .tabViewStyle(PageTabViewStyle())
        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
      } //: GroupBox
    }
}
