//
//  MessageDataSource.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import Foundation

protocol MessageDataSource {
    func getMessages() -> [Message]
}
