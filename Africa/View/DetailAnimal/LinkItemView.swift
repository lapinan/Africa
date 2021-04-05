//
//  LinkItemView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI

struct LinkItemView: View {
  let animal: Animal
  
    var body: some View {
      GroupBox {
        HStack {
          Image(systemName: "globe")
          Text("Wikipedia")
          Spacer()
          
          Group {
            Image(systemName: "arrow.up.right.square")
            Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
          }
          .foregroundColor(.accentColor)
        } //: HStack
      } //: Box
    }
}

