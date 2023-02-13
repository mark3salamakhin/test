//
//  View.swift
//  New
//
//  Created by MarkS on 30.12.2022.
//

import UIKit
import SnapKit

class View: UIView {
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
      //  stack.alignment = .trailing
        stack.distribution = .fillProportionally
        stack.spacing = 10
        return stack
    }()
    
    let one: UIButton = {
        let button = UIButton()
        //MARK: Setup with Image
        //1
        var config = UIButton.Configuration.plain()
        config.title = "Title of the UIButton"
        config.image = UIImage(systemName: "line.horizontal.3.decrease.circle.fill",
                               withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        config.imagePadding = 4
        button.configuration = config
        
        let gradient = CAGradientLayer()
        gradient.frame = button.bounds
        gradient.colors = [UIColor.green, UIColor.yellow ]
        button.layer.addSublayer(gradient)
        
        
        button.tintColor = .black
        
        
        
        return button
    }()
    let two = ExampleButton(frame: CGRect(x: 0, y: 0, width: 1999, height: 50))

    
    
    
    //MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: setupView
    func setupView() {
        backgroundColor = .white
        
        addSubview(stack)
        addSubview(two)
        constraints()
        
        stack.addArrangedSubview(one)
      
        
    }
    
    func constraints(){
        stack.snp.makeConstraints{
            $0.top.equalTo(safeAreaLayoutGuide)
        }
        two.snp.makeConstraints{
            $0.height.equalToSuperview().multipliedBy(0.2)
            $0.bottom.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.8)
        }
        
    }
    
    
}
