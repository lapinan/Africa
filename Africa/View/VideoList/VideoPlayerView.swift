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
      VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: video.id, withExtension: "mp4")!))
    }
}
