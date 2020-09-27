//
//  Array+Only.swift
//  Memorize
//
//  Created by peerawat yoouthong on 27/9/2563 BE.
//  Copyright © 2563 ascii112. All rights reserved.
//

import Foundation
extension Array{
    var only: Element?{
        count == 1 ? first : nil
    }
}
