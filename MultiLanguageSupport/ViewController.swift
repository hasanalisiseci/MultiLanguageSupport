//
//  ViewController.swift
//  MultiLanguageSupport
//
//  Created by Hasan Ali Şişeci on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, World".localized()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 46, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myLabel)
        myLabel.frame = view.bounds

    }
}

extension String {
    func localized() -> String {
        return NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self)
    }
}

