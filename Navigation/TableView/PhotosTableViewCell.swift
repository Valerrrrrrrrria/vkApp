//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Валерия Новикова on 16.03.2021.
//  Copyright © 2021 Валерия Новикова. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private(set) lazy var titleView: UILabel = {
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
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private(set) lazy var containerView: UIView = {
        let container = UIView()
        container.backgroundColor = .magenta
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    private(set) lazy var openGaleryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        
        addSubview(containerView)
        
        let images: [UIImageView] = [UIImageView(image: #imageLiteral(resourceName: "image5")), UIImageView(image: #imageLiteral(resourceName: "image2")), UIImageView(image: #imageLiteral(resourceName: "image1")), UIImageView(image: #imageLiteral(resourceName: "image11"))]
        
        containerView.addSubview(titleView)
        containerView.addSubview(openGaleryButton)
        
        for image in images {
            image.contentMode = .scaleAspectFill
            imagesStack.addArrangedSubview(image)
        }
        containerView.addSubview(imagesStack)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        
        let constraints = [
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 170),
            
            titleView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12),
            titleView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12),
            titleView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            
            openGaleryButton.centerYAnchor.constraint(equalTo: titleView.centerYAnchor),
            openGaleryButton.trailingAnchor.constraint(equalTo: titleView.trailingAnchor),
            
            imagesStack.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 12),
            imagesStack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12),
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
