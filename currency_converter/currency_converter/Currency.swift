//
//  Currency.swift
//  currency_converter
//
//  Created by Pavel on 20/03/2020.
//  Copyright © 2020 Pavel. All rights reserved.
//

import Foundation

struct Currency: Decodable {
    struct Result: Decodable  {
        let rub: Double
        
        enum CodingKeys: String, CodingKey {
          case rub = "RUB"
        }
    }
    
    let rates: Result
    let base: String
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case rates
        case base
        case date
     }
}

