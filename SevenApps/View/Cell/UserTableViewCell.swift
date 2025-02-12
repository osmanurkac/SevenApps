//
//  UserTableViewCell.swift
//  SevenApps
//
//  Created by Osman Tarık Urkaç on 12.02.2025.
//
import UIKit
import SnapKit

class UserTableViewCell: UITableViewCell {
    static let identifier = "UserTableViewCell"
    
    private let nameLabel = UILabel()
    private let emailLabel = UILabel()
    private let phoneLabel = UILabel()
    private let websiteLabel = UILabel()
    
    private func createInfoView(title: String, value: UILabel) -> UIView {
        let containerView = UIView()
        containerView.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        containerView.layer.cornerRadius = 10
        containerView.layer.masksToBounds = true
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.3
        containerView.layer.shadowOffset = CGSize(width: 0, height: 2)
        containerView.layer.shadowRadius = 4
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        titleLabel.textColor = .white
        
        containerView.addSubview(titleLabel)
        containerView.addSubview(value)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        value.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        return containerView
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        let nameView = createInfoView(title: "Name", value: nameLabel)
        let emailView = createInfoView(title: "Email", value: emailLabel)

        let container = UIView()
        container.backgroundColor = .black
        container.layer.cornerRadius = 10
        container.layer.masksToBounds = true
        container.layer.borderWidth = 1
        container.layer.borderColor = UIColor.systemGray4.cgColor
        container.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(container)
        
        let stackView = UIStackView(arrangedSubviews: [nameView, emailView])
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        container.addSubview(stackView)
        

        container.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
            make.height.greaterThanOrEqualTo(120)
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(container).inset(15)
        }

        contentView.layer.cornerRadius = 8
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.masksToBounds = true
        contentView.backgroundColor = .black
    }
    
    func configure(with user: User) {
        nameLabel.text = user.name.isEmpty ? "Name: Loading..." : user.name
        emailLabel.text = user.email.isEmpty ? "Email: Loading..." : user.email
    }
}
