//
//  ViewController.swift
//  ViewCodeStudy
//
//  Created by Pedro Ganem on 09/03/21.
//

import UIKit


class ViewController: UIViewController {
    
    let appColors = AppColors()
   
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupImage()
        setupLabel()
        setupButton()
        setupLowerLabel()
    }
    
    private func setupImage() {
        let uiWidth = view.frame.width
        let imageName = "growin_logo"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.backgroundColor = .systemBackground
        imageView.frame = CGRect(x: 0, y: 100, width: uiWidth, height: 211)
        view.addSubview(imageView)
    }
    
    private func setupLabel() {
        let label = UILabel(frame: CGRect(x: 70, y: 386, width: 262, height: 148))
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 2
        label.font = label.font.withSize(24)
        label.text = "Take care of your plants \n wherever you are!"
        view.addSubview(label)
    }
    
    private func setupButton() {
        let uiWidth = view.frame.width
        let button = UIButton(frame: CGRect(x: 18, y: 694, width: uiWidth*0.89, height: 47))
        button.setTitle("Começar", for: .normal)
        button.backgroundColor = appColors.buttonColor
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(onButtonPressed), for: .touchUpInside)
        view.addSubview(button)
    }
    
    private func setupLowerLabel() {
        let label1 = UILabel(frame: CGRect(x: 104, y: 800, width: 150, height:17))
        let label2 = UILabel(frame: CGRect(x: 225, y: 800, width: 80, height: 17))
        label1.font = label1.font.withSize(14)
        label1.text = "Already a grower?"
        label1.textColor = .black
        label2.text = "Sign In"
        label2.font = UIFont.boldSystemFont(ofSize: 14)
        label2.font = label2.font.withSize(14)
        label2.textColor = appColors.buttonColor
        view.addSubview(label1)
        view.addSubview(label2)
    }
    
    @objc func onButtonPressed(sender: UIButton) {
        let secondViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }
    
}

