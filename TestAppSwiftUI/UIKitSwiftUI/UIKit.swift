//
//  UIKit.swift
//  TestAppSwiftUI
//
//  Created by Mike Bastian on 02.03.23.
//

import UIKit

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()

        let textLabel = UILabel()
        textLabel.text = "Hello World!"
        textLabel.textAlignment = .center

        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                               constant: 20),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                constant: -20),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        self.view = view
    }
}
