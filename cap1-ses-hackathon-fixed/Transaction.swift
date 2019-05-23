//
//  Transaction.swift
//  cap1-ses-hackathon-fixed
//
//  Created by Reza Madhavan on 5/23/19.
//  Copyright © 2019 Reza Madhavan. All rights reserved.
//

import Foundation


struct Transaction: Codable{
    var vendor: String
    var time: String
    var date: String
    var items: [String: Double]
    var total: Double
    
}

struct TransactionDataResponse: Codable {
    var success : Bool
    var data : Transaction
}
