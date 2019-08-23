//
//  RatingControl.swift
//  WeatherScottsdale
//
//  Created by Jacob Hotz on 2019-08-22.
//  Copyright © 2019 Jacob Hotz. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButons()
    }
    
    //MARK: Private Methods
    private func setupButons() {
        let button = UIButton()
        button.backgroundColor = UIColor.red
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        addArrangedSubview(button)
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }

}
