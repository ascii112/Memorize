//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by peerawat yoouthong on 8/9/2563 BE.
//  Copyright © 2563 ascii112. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable{
    func firstIndex(matching: Element) -> Int{
        for index in 0...self.count{
            if self[index].id == matching.id{
                return index
            }
        }
        return 0 //TODO: bogus!
    }
}
