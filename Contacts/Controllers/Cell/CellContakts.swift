//
//  CellContakts.swift
//  Contacts
//
//  Created by Aleksandr  on 16.12.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    private let backgroundCell: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 21
        view.backgroundColor = .systemGray4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let oneBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let rabbitImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit//формат отабражения
        imageView.image = UIImage(named: "rabbit")
        //imageView.image = UIImage(named: "rabbit")?.withRenderingMode(.alwaysTemplate)
       // imageView.tintColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .purple
       // label.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let surNameLabel: UILabel = {
        let label = UILabel()
        label.text = "SurName"
        label.textColor = .purple
       // label.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(backgroundCell)
        addSubview(oneBackgroundView)
        addSubview(nameLabel)
        addSubview(surNameLabel)
        addSubview(rabbitImageView)
    }
}

extension TableViewCell {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            backgroundCell.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            backgroundCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            backgroundCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            backgroundCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),
            
            oneBackgroundView.centerYAnchor.constraint(equalTo: backgroundCell.centerYAnchor),
            oneBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            oneBackgroundView.heightAnchor.constraint(equalToConstant: 77),
            oneBackgroundView.widthAnchor.constraint(equalToConstant: 77),
            
            rabbitImageView.centerXAnchor.constraint(equalTo: oneBackgroundView.centerXAnchor),
            rabbitImageView.centerYAnchor.constraint(equalTo: oneBackgroundView.centerYAnchor),
            rabbitImageView.heightAnchor.constraint(equalToConstant: 70),
            rabbitImageView.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            nameLabel.leadingAnchor.constraint(equalTo: rabbitImageView.leadingAnchor, constant: 100),
            
            surNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            surNameLabel.leadingAnchor.constraint(equalTo: rabbitImageView.leadingAnchor, constant: 100)
            
        ])
    }
}

