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
            .frame(height: 300)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
          
          ForEach(0 ..< animals.count) { item in
            NavigationLink(destination: DetailAnimalView()) {
              AnimalListView(animal: animals[item])
            }
          }
        } //: List
        .navigationBarTitle(Text("Africa"), displayMode: .large)
      } //: NavigationView
    }
}

