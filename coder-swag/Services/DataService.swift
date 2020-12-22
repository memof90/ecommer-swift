//
//  DataService.swift
//  coder-swag
//
//  Created by Memo Figueredo on 19/12/20.
//

import Foundation

class DataService{
    static let instance = DataService()
    
//    MARK: CATEGORIES
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
//    MARK: HATS
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$18", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    //    MARK: HOODIES
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie03.png"),
    ]
    //    MARK: SHIRTS
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Gray", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
      //    MARK: ALL PRODUCT
    private let digitalGoods = [Product]()
    
//    MARK: FUCTIONS
    
//    Function to obtain all category
    func getCategories() -> [Category] {
        return categories
    }
    //    Function to obtain SHIRTS, HATS, HOODIES, DIGITAL
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HATS":
            return   getHats()
        case "HOODIES":
            return  getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    //    Function to obtain all HATS
    func getHats() -> [Product] {
        return hats
    }
    //    Function to obtain all HOODIES
    func getHoodies() -> [Product] {
        return hoodies
    }
    //    Function to obtain all SHIRTS
    func getShirts() -> [Product] {
        return shirts
    }
    
    //    Function to obtain all PRODUCTS
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
