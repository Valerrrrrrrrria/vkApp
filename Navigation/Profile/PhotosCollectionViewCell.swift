//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Валерия Новикова on 28/02/2025.
//  Copyright © 2025 Валерия Новикова. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
