//
//  UserRepository.swift
//  SevenApps
//
//  Created by Osman Tarık Urkaç on 12.02.2025.
//


class UserRepository {
    func getUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        NetworkManager.shared.fetchUsers(completion: completion)
    }
}
