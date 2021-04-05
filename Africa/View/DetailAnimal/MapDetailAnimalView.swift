//
//  MapDetailAnimalView.swift
//  Africa
//
//  Created by Андрей Лапин on 05.04.2021.
//

import SwiftUI
import MapKit

struct MapDetailAnimalView: View {
  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 120.0, longitudeDelta: 120.0))
  
    var body: some View {
        Map(coordinateRegion: $region)
          .frame(height: 256)
          .cornerRadius(12)
          .overlay(
            NavigationLink(destination: MapView()) {
              HStack {
                Image(systemName: "mappin.circle")
                  .imageScale(.large)
                  .foregroundColor(.white)
                
                Text("Locations")
                  .foregroundColor(.accentColor)
                  .fontWeight(.bold)
              } //: HStack
              .padding(.vertical, 8)
              .padding(.horizontal, 14)
              .background(
                Color.black
                  .opacity(0.4)
              )
              .cornerRadius(8)
            } //: NavigationLink
            .padding(12)
            , alignment: .topTrailing
          )
    } //: Map
}
