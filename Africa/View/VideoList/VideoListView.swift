//
//  VideoListView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI
import AudioToolbox

struct VideoListView: View {
  @State var videos: [Video] = Bundle.main.decode("videos.json")
  
    var body: some View {
      NavigationView {
        List {
          ForEach(videos) { video in
            NavigationLink(destination: VideoPlayerView(video: video)) {
              VideoItemView(video: video)
                .padding(.vertical, 8)
            }
          } //: Loop
        } //: List
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle("VideoList", displayMode: .inline)
        .navigationBarItems(
          trailing:
            Button(action: {
              videos.shuffle()
              AudioServicesPlaySystemSound(1519)
            }, label: {
              Image(systemName: "arrow.2.squarepath")
            })
        )
      } //: NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
