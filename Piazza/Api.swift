//
//  Api.swift
//  Piazza
//
//  Created by John Wallace on 25/05/2023.
//

import Foundation

struct Api {
#if DEBUG
  static let rootURL = URL(string: "http://localhost:3000/")!
#else
  static let rootURL =
  URL(string: "https://piazza-web-5iv7.onrender.com/")!
#endif
}
