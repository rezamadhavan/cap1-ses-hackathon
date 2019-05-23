//
//  NetworkManager.swift
//  cap1-ses-hackathon-fixed
//
//  Created by Reza Madhavan on 5/23/19.
//  Copyright © 2019 Reza Madhavan. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class NetworkManager{
    
    private static let baseURL = "http://0.0.0.0"
    
    static func getTransactions(completion: @escaping ([Transaction]) -> Void){
        let url = "\(baseURL)/api/user/"
        Alamofire.request(url, method: .get, parameters: [:], encoding: Alamofire.JSONEncoding.default, headers: [:]).validate().responseData(){
            response in
            switch response.result {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                if let transactionRes = try? jsonDecoder.decode(TransactionDataResponse.self, from: data) {
                    completion([])
                }
                else {
                    completion([])
                }
            case .failure( _):
                completion([])
            }
        }
    }
}



