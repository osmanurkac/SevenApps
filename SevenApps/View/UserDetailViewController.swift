//
//  UserDetailViewController.swift
//  SevenApps
//
//  Created by Osman Tarık Urkaç on 12.02.2025.
//
import UIKit
import SnapKit

class UserDetailViewController: UIViewController {
    private let viewModel: UserDetailViewModel
    
    init(user: User) {
        self.viewModel = UserDetailViewModel(user: user)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupUI()
    }
    
    private func createInfoView(title: String, value: String) -> UIView {
        
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
        
        let valueLabel = UILabel()
        valueLabel.text = value
        valueLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        valueLabel.textColor = .white
        valueLabel.numberOfLines = 0
        
        containerView.addSubview(titleLabel)
        containerView.addSubview(valueLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        valueLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        return containerView
    }
    
    private func setupUI() {
        
        let nameView = createInfoView(title: "Name", value: viewModel.user.name)
        let emailView = createInfoView(title: "Email", value: viewModel.user.email)
        let phoneView = createInfoView(title: "Phone", value: viewModel.user.phone)
        let websiteView = createInfoView(title: "Website", value: viewModel.user.website)
        
        let container = UIView()
        container.backgroundColor = .black
        container.layer.cornerRadius = 10
        container.layer.masksToBounds = true
        container.layer.borderWidth = 1
        container.layer.borderColor = UIColor.systemGray4.cgColor
        container.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(container)
        
        let stackView = UIStackView(arrangedSubviews: [nameView, emailView, phoneView, websiteView])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        container.addSubview(stackView)
        
        container.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.greaterThanOrEqualTo(200)
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(container).inset(15)
        }
    }
}
