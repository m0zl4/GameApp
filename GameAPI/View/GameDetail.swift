//
//  GameDetail.swift
//  GameAPI
//
//  Created by M. Abdul Latief -Mz on 15/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct GameDetail: View {
  let games: Game
  
  var body: some View {
    ScrollView{
      VStack(alignment: .leading){
        WebImage(url: URL(string: games.image))
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipped()
        
        VStack(alignment: .leading, spacing: 20){
          Text(games.title)
            .font(.title)
            .fontWeight(.bold)
            .kerning(0.5)
          
          HStack{
            Text("Rate :")
              .font(.system(size: 20))
              .bold()
              .kerning(0.2)
             
            Spacer()
            Text(games.rate)
              .font(.system(size: 20))
              .foregroundColor(.red)
              .kerning(0.1)
              .italic()
          }
          
          HStack{
            Text("Released :")
              .font(.system(size: 20))
              .bold()
              .kerning(0.2)
             
            Spacer()
            Text(games.date)
              .font(.system(size: 20))
              .kerning(0.1)
          }

        }.padding()
      }
    }
  }
}


