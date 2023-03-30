//
//  Fruit.swift
//  TestAppSwiftUI
//
//  Created by Mike Bastian on 02.03.23.
//

import Foundation

struct Fruit: Identifiable, Codable, Hashable {
    var id: UUID?
    var name: String
    var image: String
    var description: String
}
