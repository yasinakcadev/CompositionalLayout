//
//  MyCollectionViewCell.swift
//  CompositionalLayout
//
//  Created by Yasin AKÇA (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 19.06.2024.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cellId"
    
    private let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setupUI() {
        contentView.addSubview(imageView)
        let images: [UIImage] = [
            UIImage(named: "doga1"),
            UIImage(named: "doga2"),
            UIImage(named: "doga3")
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
