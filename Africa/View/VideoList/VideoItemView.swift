//
//  VideoListItemView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI

struct VideoItemView: View {
  let video: Video
    var body: some View {
      HStack(spacing: 10) {
        Image(video.getFullNameVideo  )
          .resizable()
          .scaledToFit()
          .frame(height: 80)
          .overlay(
            Image(systemName: "play.circle")
              .resizable()
              .imageScale(.large)
              .frame(width: 32, height: 32)
          )
          .cornerRadius(9)
          .shadow(radius: 4 )
        
        VStack(alignment: .leading, spacing: 10) {
          Text(video.name)
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundColor(.accentColor)
          
          Text(video.headline)
            .font(.footnote)
        } //: VStack
      } //: HStack
    }
}
