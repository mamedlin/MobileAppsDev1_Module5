//
//  AdventurePath.swift
//  MobileAppsDev1_Module5
//
//  Created by Michael Medlin on 11/8/23.
//

import Foundation

struct adventurePath
{
    init(_ desc: String, _ path_one:String, _ path_two:String)
    {
        self.desc = desc
        self.path_one = path_one
        self.path_two = path_two
    }
    
    var desc: String
    var path_one: String
    var path_two: String
}
