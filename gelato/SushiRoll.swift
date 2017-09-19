//
//  SushiRoll.swift
//  gelato
//
//  Created by EvanTsai on 2017/9/6.
//  Copyright © 2017年 Zurasta. All rights reserved.
//

import UIKit

@IBDesignable class SushiRoll: UIScrollView {
    
    var sushiSize = 3
    let sushiWidth = 172
    let sushiHeight = 215
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
        
    private func putBiscuits(view: UIStackView) {
        for _ in 0..<sushiSize {
            // Create the button
            let biscuit = Biscuit()
            biscuit.backgroundColor = UIColor.red
            // Add the button to the stack
            view.addArrangedSubview(biscuit)
        }
    }
    
    private func setupView(){
        
        let width = sushiSize * sushiWidth + (sushiSize-1)*10
        let stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: width, height: sushiHeight))
        
        stackView.axis = .horizontal
        stackView.spacing = 10.0
        
        putBiscuits(view: stackView)
        addSubview(stackView)

        self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: stackView.frame.width))
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
