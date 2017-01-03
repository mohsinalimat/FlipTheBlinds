//
//  ViewController.swift
//  FlipTheBlindsNonsense
//
//  Created by Joel Bell on 9/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configImageView()
        configButton()
        
    }
    
    func buttonTapped(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

}

extension ToViewController {
    
    fileprivate func configImageView() {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "dracula")
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
    }
    
    fileprivate func configButton() {
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        let buttonSize: CGFloat = 60
        let buttonYconstant: CGFloat = 50
        
        let buttonXorigin = (screenWidth / 2) - (buttonSize / 2)
        let buttonYorigin = screenHeight - buttonSize - buttonYconstant
        
        let button = UIButton()
        button.backgroundColor = UIColor.black
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.setTitle("BACK", for: UIControlState())
        button.frame = CGRect(x: buttonXorigin, y: buttonYorigin, width: buttonSize, height: buttonSize)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        
        button.addTarget(self, action: #selector(ToViewController.buttonTapped(_:)), for: .touchUpInside)
        
        view.addSubview(button)
        
    }
    
}