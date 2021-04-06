//
//  GalleryView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI
import AudioToolbox

struct GalleryView: View {
  @State fileprivate var selectedAnimal: String = "lion"
  @State fileprivate var gridColumn: Double = 3.0
  @State fileprivate var items: [GridItem] = [GridItem(.flexible())]
  
  fileprivate let animals: [Animal] = Bundle.main.decode("animals.json")
  
    var body: some View {
      ScrollView(showsIndicators: false) {
        VStack(alignment: .center, spacing: 30) {
          Image(selectedAnimal)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(
              Circle()
                .stroke(Color.white, lineWidth: 8)
            )
          
          Slider(value: $gridColumn, in: 2...4, step: 1)
            .padding(.horizontal)
            .onChange(of: gridColumn, perform: { value in
              gridSwitch()
              AudioServicesPlaySystemSound(1519)
            })
          
          LazyVGrid(columns: items, alignment: .center, spacing: 10) {
            ForEach(animals) { animal in
              Image(animal.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                  Circle()
                    .stroke(Color.white, lineWidth: 1)
                )
                .onTapGesture {
                  selectedAnimal = animal.image
                }
            }
          }
          .animation(.easeIn)
          .onAppear(perform: {
            gridSwitch()
          })
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 50)
      }
      .background(MotionAnimationView())
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

extension GalleryView {
  fileprivate func gridSwitch() {
    items = Array(repeating: .init(.flexible()), count: Int(gridColumn))
  }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
