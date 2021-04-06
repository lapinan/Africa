//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Андрей Лапин on 06.04.2021.
//

import SwiftUI

struct MotionAnimationView: View {
  @State fileprivate var randomCircle: Int = Int.random(in: 12...16)
  @State fileprivate var isAnimation: Bool = false
  
    var body: some View {
      GeometryReader { geometry in
        ZStack {
          ForEach(0...randomCircle, id: \.self) { item in
            Circle()
              .fill(Color.gray)
              .frame(width: randomSize(), height: randomSize(), alignment: .center)
              .opacity(0.15)
              .scaleEffect(isAnimation ? randomScale() : 1.0)
              .position(x: randomCoordinate(max: geometry.size.width), y: randomCoordinate(max: geometry.size.height))
              .animation(
                Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                  .repeatForever()
                  .speed(randomSpeed())
                  .delay(randomDelay())
              )
              .onAppear(perform: {
                isAnimation = true
              })
          } //: Loop
        } //: ZStack
        .drawingGroup() 
      } //: GeometryReader
    }
}

extension MotionAnimationView {
  fileprivate func randomCoordinate(max: CGFloat) -> CGFloat {
    return CGFloat.random(in: 0..<max)
  }
  
  fileprivate func randomSize() -> CGFloat {
    return CGFloat(Int.random(in: 10...300))
  }
  
  fileprivate func randomScale() -> CGFloat {
    return CGFloat(Double.random(in: 0.1...2.0))
  }
  
  fileprivate func randomSpeed() -> Double {
    return Double.random(in: 0.025...1.0)
  }
  
  fileprivate func randomDelay() -> Double {
    return Double.random(in: 0.2...2)
  }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
