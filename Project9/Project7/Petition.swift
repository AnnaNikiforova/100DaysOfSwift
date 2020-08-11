//
//  Petition.swift
//  Project7
//
//  Created by Анна Никифорова on 20.07.2020.
//  Copyright © 2020 Анна Никифорова. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
