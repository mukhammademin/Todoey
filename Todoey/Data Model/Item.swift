//
//  DataModel.swift
//  Todoey
//
//  Created by Mukhammademin Eminov on 12/03/23.
//

import Foundation

class Item: Encodable {
    var title: String = ""
    var isChecked: Bool = false
}
