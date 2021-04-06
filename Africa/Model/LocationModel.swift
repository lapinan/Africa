//
//  LocationModel.swift
//  Africa
//
//  Created by Андрей Лапин on 06.04.2021.
//

import SwiftUI
import MapKit

struct LocationNationalPark: Codable, Identifiable {
  let id: String
  let name: String
  let image: String
  let latitude: Double
  let longitude: Double
  
  var locationRegion: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
