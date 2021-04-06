//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Андрей Лапин on 06.04.2021.
//

import SwiftUI

struct MapAnnotationView: View {
  
  var location: LocationNationalPark
  @State private var animation: Double = 0.0
  
    var body: some View {
      ZStack {
        Circle()
          .fill(Color.accentColor)
          .frame(width: 54, height: 54)
        
        Circle()
          .stroke(Color.accentColor, lineWidth: 2)
          .frame(width: 52, height: 53)
          .scaleEffect(1 + CGFloat(animation))
          .opacity(1 - animation)
        
        Image(location.image)
          .resizable()
          .scaledToFit()
          .frame(width: 48)
          .clipShape(Circle())
      } //: ZStack
      .onAppear() {
        withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
          animation = 1
        }
      }
    }
}
