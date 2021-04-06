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
          MapAnnotationView(location: item)
        }
      } //: Map
      .overlay(
        HStack(spacing: 12) {
          Image("compass")
            .resizable()
            .scaledToFit()
            .frame(width: 48)
          
          VStack(alignment: .leading, spacing: 3) {
            HStack {
              Text("Latitude:")
                .fontWeight(.bold)
                .foregroundColor(Color.accentColor)
              
              Spacer()
              
              Text("\(region.center.latitude)")
            } //: HStack - LATITUDE
            
            Divider()
            
            HStack {
              Text("Longitude:")
                .fontWeight(.bold)
                .foregroundColor(Color.accentColor)
              
              Spacer()
              
              Text("\(region.center.longitude)")
            } //: HStack - LONGITUDE
          }//: VStack
          .font(.footnote)
          .foregroundColor(.white)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(
          Color.black
            .cornerRadius(8)
            .opacity(0.6)
        )
        .padding()
        , alignment: .top
      )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
