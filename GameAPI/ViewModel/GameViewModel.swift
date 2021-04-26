//
//  GameViewModel.swift
//  GameAPI
//
//  Created by M. Abdul Latief -Mz on 15/04/21.
//

import Foundation
import Combine
import SwiftyJSON

class GameViewModel: ObservableObject {
  @Published var data = [Game]()
  
  init() {
    let url = "https://api.rawg.io/api/games?page=1"
    
    let session = URLSession(configuration: .default)
    
    session.dataTask(with: URL(string: url)!){ (data, _, error) in
      if error != nil {
        print((error?.localizedDescription)!)
        return
      }
      let json = try! JSON(data: data!)
      let items = json["results"].array!
      
      for i in items {
        let title = i["name"].stringValue
        let date = i["released"].stringValue
        let image = i["background_image"].stringValue
        let rate = i["rating"].stringValue
        
        DispatchQueue.main.async {
          self.data.append(Game(title: title, image: image, date: date, rate: rate))
        }
      }
    }.resume()
  }
}

