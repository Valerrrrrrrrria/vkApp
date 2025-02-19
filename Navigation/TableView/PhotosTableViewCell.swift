//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Валерия Новикова on 16.03.2021.
//  Copyright © 2021 Валерия Новикова. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private(set) lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Photos"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private(set) lazy var imagesStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.alignment = .fill
        stack.backgroundColor = .systemRed
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private(set) lazy var containerView: UIView = {
        let container = UIView()
        container.backgroundColor = .magenta
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .cyan
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        let ivOne = UIImageView(image: #imageLiteral(resourceName: "image5"))
        let ivTwo = UIImageView(image: #imageLiteral(resourceName: "image2"))
        let ivThree = UIImageView(image: #imageLiteral(resourceName: "image1"))
        let ivFour = UIImageView(image: #imageLiteral(resourceName: "image11"))
        
        ivOne.contentMode = .scaleAspectFill
        ivTwo.contentMode = .scaleAspectFill
        ivThree.contentMode = .scaleAspectFill
        ivFour.contentMode = .scaleAspectFill
        
        self.addSubview(containerView)
        
        imagesStack.addArrangedSubview(ivOne)
        imagesStack.addArrangedSubview(ivTwo)
        imagesStack.addArrangedSubview(ivThree)
        imagesStack.addArrangedSubview(ivFour)
        
        containerView.addSubview(title)
        containerView.addSubview(imagesStack)
        setupConstraints()
    }
    
    func setupConstraints() {
        
        let constraints = [
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 150),
            
            title.topAnchor.constraint(equalTo: containerView.topAnchor),
            title.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 12),
            title.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            
            imagesStack.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 12),
            imagesStack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 12),
            imagesStack.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            imagesStack.heightAnchor.constraint(equalToConstant: 100),
            imagesStack.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
