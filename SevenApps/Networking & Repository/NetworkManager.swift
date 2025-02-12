//
//  NetworkManager.swift
//  SevenApps
//
//  Created by Osman Tarık Urkaç on 12.02.2025.
//
import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://jsonplaceholder.typicode.com"
    
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        let url = URL(string: "\(baseURL)/users")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    completion(.success(users))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
