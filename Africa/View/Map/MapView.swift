//
//  MapView.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
  @State private var region: MKCoordinateRegion = {
    let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
    let maxZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
    let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: maxZoomLevel)
    
    return mapRegion
  }()
  
  let locations: [LocationNationalPark] = Bundle.main.decode("locations.json")
  
    var body: some View {
      Map(coordinateRegion: $region, annotationItems: locations) { item in
        MapAnnotation(coordinate: item.locationRegion) {
          Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 32)
        }
      }
      .edgesIgnoringSafeArea(.top)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
