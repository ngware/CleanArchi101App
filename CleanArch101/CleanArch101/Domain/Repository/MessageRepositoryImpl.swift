//
//  MessageRepositoryImpl.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import Foundation

struct MessageRepositoryImpl: MessageRepository {
    
    var dataSource: MessageDataSource
    
    func getMessages() -> [Message] {
        return dataSource.getMessages()
    }
}
