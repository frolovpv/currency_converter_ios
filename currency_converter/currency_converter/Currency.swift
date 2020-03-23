//
//  Currency.swift
//  currency_converter
//
//  Created by Pavel on 20/03/2020.
//  Copyright © 2020 Pavel. All rights reserved.
//

import Foundation

struct Currency: Decodable {
  let rates: [String]
  let country: String
    
  enum CodingKeys: String, CodingKey {
    case rates
    case country
  }
}

extension Currency: Displayable {
    var countryText: String {
      country
    }
  var listItems: [String] {
    rates
  }
}
