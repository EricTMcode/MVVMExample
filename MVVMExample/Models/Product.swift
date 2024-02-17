//
//  Product.swift
//  MVVMExample
//
//  Created by Eric on 17/02/2024.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
