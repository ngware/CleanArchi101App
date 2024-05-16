//
//  MessageRepository.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import Foundation

protocol MessageRepository {
    
    func getMessages() -> [Message]
}
