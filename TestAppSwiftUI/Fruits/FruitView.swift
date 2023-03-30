//
//  FruitView.swift
//  TestAppSwiftUI
//
//  Created by Mike Bastian on 10.02.23.
//

import SwiftUI

struct FruitView: View {
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List(fruitViewModel.fruits) { fruit in
                NavigationLink(fruit.name, value: fruit)
            }
            .navigationDestination(for: Fruit.self, destination: FruitDetailsView.init)
            .navigationTitle("Wähle eine Frucht")
            .task {
                await fruitViewModel.getAllFruits()
            }
            .refreshable {
                await fruitViewModel.getAllFruits()
            }
        }
    }
}

struct FruitView_Previews: PreviewProvider {
    static var previews: some View {
        FruitView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
