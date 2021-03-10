//
//  SecondViewController.swift
//  ViewCodeStudy
//
//  Created by Pedro Ganem on 10/03/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
    }
    
    private func setupLabel() {
        let uiWidth = view.frame.width
        let label = UILabel(frame: CGRect(x: 0, y: 100, width: uiWidth, height: 300))
        label.backgroundColor = .white
        label.text = "EAE MEU CHAPA"
        label.textAlignment = NSTextAlignment.center
        label.textColor = .black
        label.font = label.font.withSize(48)
        label.font = UIFont.boldSystemFont(ofSize: 48)
        label.textColor = .red
        view.addSubview(label)
    }
}
