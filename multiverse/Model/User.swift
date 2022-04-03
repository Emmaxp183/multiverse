//
//  User.swift
//  multiverse
//
//  Created by admin on 03/04/2022.
//

import Foundation

import FirebaseFirestoreSwift
struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
    let profileImageUrl: String
}
