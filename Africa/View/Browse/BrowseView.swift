//
//  ContentView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct BrowseView: View {
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
    var body: some View {
      NavigationView {
        List {
          CoverImageView()
            .frame(minWidth: 0, maxWidth: .infinity)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
          
          ForEach(animals) { animal in
            NavigationLink(destination: DetailAnimalView(animal: animal)) {
              AnimalListView(animal: animal)
            }
          }
        } //: List
        .navigationBarTitle(Text("Africa"), displayMode: .large)
      } //: NavigationView
    }
}

