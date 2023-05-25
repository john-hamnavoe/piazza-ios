//
//  Global.swift
//  Piazza
//
//  Created by John Wallace on 25/05/2023.
//

import Foundation

import Turbo
struct Global {
  static let pathConfiguration = PathConfiguration(
      sources:
      [
        .file(
            Bundle.main.url(
                forResource: "path_configuration",
                withExtension: "json"
        )!)
      ]
  )
}
