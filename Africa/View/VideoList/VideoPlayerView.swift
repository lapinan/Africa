//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Андрей Лапин on 06.04.2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  let video: Video
  
  
    var body: some View {
      VStack {
        VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4")) {
        }
        .overlay(
          Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 32)
            .padding()
          , alignment: .topLeading
        )
      }
      .navigationBarTitle(video.name, displayMode: .inline)
    }
}
