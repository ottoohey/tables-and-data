//
//  Category.swift
//  coder-swag
//
//  Created by Oliver Toohey on 26/1/18.
//  Copyright © 2018 Oliver Toohey. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init (title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
