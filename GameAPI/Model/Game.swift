//
//  Game.swift
//  GameAPI
//
//  Created by M. Abdul Latief -Mz on 15/04/21.
//

import SwiftUI

struct Game: Identifiable {
  var id = UUID()
  var title : String
  var image : String
  var date : String
  var rate : String
}
