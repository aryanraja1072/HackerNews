//
//  PostData.swift
//  HackerNews
//
//  Created by Devika Raja on 30/06/20.
//  Copyright © 2020 Devika Raja. All rights reserved.
//

import Foundation
struct Results:Decodable{
    let hits:[Post];
}
struct Post:Decodable,Identifiable{
    var id:String {
        return objectID    }
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
