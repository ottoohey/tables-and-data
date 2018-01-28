//
//  DataService.swift
//  coder-swag
//
//  Created by Oliver Toohey on 26/1/18.
//  Copyright © 2018 Oliver Toohey. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Graphic Beanie", price: "$420", imageName: "hat01.png"),
        Product(title: "Hat Black", price: "$69", imageName: "hat02.png"),
        Product(title: "Hat White", price: "$1", imageName: "hat03.png"),
        Product(title: "Snapback", price: "$1,000,000", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Logo Hoodie Grey", price: "$40", imageName: "hoodie01.png"),
        Product(title: "Logo Hoodie Red", price: "$40", imageName: "hoodie02.png"),
        Product(title: "Hoodie Grey", price: "$40", imageName: "hoodie03.png"),
        Product(title: "Hoodie Black", price: "$40", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Shirt Black", price: "$99.99", imageName: "shirt01.png"),
        Product(title: "Shirt Grey", price: "$99.99", imageName: "shirt02.png"),
        Product(title: "Shirt Red", price: "$99.99", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$99.99", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$99.99", imageName: "shirt05.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}















