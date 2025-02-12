//
//  UserListViewModel.swift
//  SevenApps
//
//  Created by Osman Tarık Urkaç on 12.02.2025.
//

class UserListViewModel {
    private let repository = UserRepository()
    var users: [User] = []
    var reloadTableView: (() -> Void)?
    var showError: ((String) -> Void)?
    
    func fetchUsers() {
        repository.getUsers { [weak self] result in
            switch result {
            case .success(let users):
                self?.users = users
                self?.reloadTableView?()
            case .failure(let error):
                self?.showError?("Failed to fetch users: \(error.localizedDescription)")
            }
        }
    }
}
