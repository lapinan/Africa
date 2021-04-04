//
//  HeadingView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI

struct HeadingView: View {
  let image: String
  let text: String
  
    var body: some View {
      HStack {
        Image(systemName: image)
          .foregroundColor(.accentColor)
          .imageScale(.large)
        
        Text(text)
          .font(.title3)
          .fontWeight(.bold)
      } //: HStack
      .padding(.vertical)
    }
}
