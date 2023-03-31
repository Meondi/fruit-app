//
//  FruitViewModel.swift
//  TestAppSwiftUI
//
//  Created by Mike Bastian on 02.03.23.
//

import Foundation

@MainActor
class FruitViewModel: ObservableObject {
    
    @Published var fruits = [Fruit]()
    
    func getAllFruits() async {
        guard let url = URL(string: "http://127.0.0.1:8080/fruits") else {
            print("invalid URL")
            return
        }
        let urlSession = URLSession.shared
        do {
            let (data, _) = try await urlSession.data(from: url)
            fruits = try JSONDecoder().decode([Fruit].self, from: data)
        } catch {
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
}
