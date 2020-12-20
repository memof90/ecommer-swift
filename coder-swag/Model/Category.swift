//
//  Category.swift
//  coder-swag
//
//  Created by Memo Figueredo on 19/12/20.
//

import Foundation


struct Category{
    
    public private (set) var  title : String
    
    public  private (set) var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}

