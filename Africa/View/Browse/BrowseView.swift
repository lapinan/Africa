//
//  ContentView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI
import AudioToolbox

struct BrowseView: View {
  @State fileprivate var isCoverImageView = true
  @State fileprivate var items: [GridItem] = Array(repeating: GridItem(.flexible()), count: 1)
  @State fileprivate var columnCount: Int = 1
  
  
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
    var body: some View {
      NavigationView {
        Group {
          if isCoverImageView {
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
          } else {
            ScrollView(showsIndicators: false) {
              LazyVGrid(columns: items, spacing: 10) {
                ForEach(animals) { animal in
                  NavigationLink(destination: DetailAnimalView(animal: animal)) {
                    AnimalGridItemView(animal: animal)
                  }
                } //: Loop
              } //: Grid
              .animation(Animation.easeOut(duration: 0.25))
              .padding(10)
            } //: ScrollView
          }
        }
        .navigationBarTitle(Text("Africa"), displayMode: .large)
        .toolbar {
          ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
            HStack {
              Button(action: {
                isCoverImageView = true
                AudioServicesPlaySystemSound(1519)
              }) {
                Image(systemName: "square.fill.text.grid.1x2")
                  .font(.title2)
                  .foregroundColor(isCoverImageView ? .accentColor : .white)
              }
              
              Button(action: {
                isCoverImageView = false
                gridSwitch()
                AudioServicesPlaySystemSound(1519)
              }) {
                Image(systemName: toolBarIcon)
                  .font(.title2)
                  .foregroundColor(isCoverImageView ? .white : .accentColor)
              }
            }
          }
        }
      } //: NavigationView
    }
}


extension BrowseView {
  fileprivate func gridSwitch() {
    items = Array(repeating: GridItem(.flexible()), count: columnCount % 3 + 1)
    columnCount = items.count
  }
  
  fileprivate var toolBarIcon: String {
    switch columnCount {
    case 1:
      return "square.grid.2x2"
    case 2:
      return "square.grid.3x2"
    default:
      return "square"
    }
  }
}
