//
//  URL.swift
//  Chapper
//
//  Created by renaka agusta on 23/10/22.
//

import Foundation

enum URLType {
  case name(String)
  case url(URL)

  var url: URL? {
    switch self {
      case .name(let name):
        return Bundle.main.url(forResource: name, withExtension: "gif")
      case .url(let remoteURL):
        return remoteURL
    }
  }
}
