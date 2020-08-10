//
//  Book.swift
//  BookManager
//
//  Created by Tife on 2020/08/10.
//  Copyright © 2020 Tife. All rights reserved.
//

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint() {
        print("Name  : \(name!)")
        print("Genre : \(genre!)")
        print("Author: \(author!)")
        print("==========================================")
    }
}
