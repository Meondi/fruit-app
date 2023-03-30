//
//  FruitDetailsView.swift
//  TestAppSwiftUI
//
//  Created by Mike Bastian on 21.03.23.
//

import SwiftUI

struct FruitDetailsView: View {
    var fruit: Fruit
    
    var body: some View {
        ScrollView {
            VStack {
                Text(fruit.name)
                    .font(Font.title)
                AsyncImage(url: URL(string: fruit.image)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: 200)
                    
                } placeholder: {
                    ProgressView()
                        .frame(width: UIScreen.main.bounds.width, height: 200)
                }
                .padding(.bottom, 20)
                Text(fruit.description)
                    .padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: Fruit(id: UUID(uuidString: "1") ?? UUID(), name: "Apfel", image: "https://img.freepik.com/fotos-kostenlos/nahaufnahme-von-frischem-apfel_144627-14640.jpg?w=2000", description: "Beschreibung"))
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
