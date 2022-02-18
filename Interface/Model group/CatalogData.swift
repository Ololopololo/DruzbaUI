//
//  CatalogData.swift
//  Interface
//
//  Created by Владислав Положай on 26.07.2021.
//

import Foundation
import SwiftUI

struct CatalogData: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var description: String
    var isCart: Bool
    var price: String
    var salePrice : String
    var sale: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
