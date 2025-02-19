//
//  CustomCell.swift
//  BookSearchApp2
//
//  Created by tlswo on 2/19/25.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    let containerView: UIView = {
       let containerView = UIView()
        containerView.backgroundColor = .red
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 12)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        
        let leadingStackView = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel])
        leadingStackView.axis = .vertical
        leadingStackView.spacing = 4
        leadingStackView.alignment = .leading
        
        let verticalStackView = UIStackView(arrangedSubviews: [containerView, leadingStackView])
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 8
        verticalStackView.alignment = .fill
        contentView.addSubview(verticalStackView)
        
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            verticalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            verticalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            verticalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        ])
    }
    
    func set(title: String, subTitle: String) {
        titleLabel.text = title
        subTitleLabel.text = subTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
