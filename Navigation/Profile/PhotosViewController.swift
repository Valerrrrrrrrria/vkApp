//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Валерия Новикова on 28/02/2025.
//  Copyright © 2025 Валерия Новикова. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    private(set) lazy var photosCollection: UICollectionView = {
        let collectionLayout = UICollectionViewFlowLayout()
        collectionLayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: collectionLayout)
        collection.dataSource = self
        collection.delegate = self
        collection.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: PhotosCollectionViewCell.self))
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Photo Gallery"
        view.backgroundColor = .white
        
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        view.addSubviews(photosCollection)
        let photosCollectionConstraints = [
            photosCollection.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            photosCollection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            photosCollection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            photosCollection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(photosCollectionConstraints)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PhotosCollectionViewCell.self), for: indexPath) as! PhotosCollectionViewCell
        return cell
    }
}

extension PhotosViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (collectionView.frame.width - 8 * 5) / 3
        return CGSize(width: width, height: width)
    }
}
