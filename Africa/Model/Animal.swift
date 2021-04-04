//
//  Animal.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct Animal: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: String
}
