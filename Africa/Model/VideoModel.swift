//
//  VideoModel.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI


struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  var getFullNameVideo: String {
    "video-\(id)"
  }
}
