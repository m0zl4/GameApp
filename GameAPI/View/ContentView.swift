//
//  ContentView.swift
//  GameAPI
//
//  Created by M. Abdul Latief -Mz on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView{
        GameList()
          .tabItem{
            Image(systemName: "house.fill")
            Text("Games")
          }
        Profile()
          .tabItem{
            Image(systemName: "person.fill")
            Text("About")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
