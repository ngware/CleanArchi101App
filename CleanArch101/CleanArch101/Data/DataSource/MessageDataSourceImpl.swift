//
//  MessageDataSourceImpl.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import Foundation

struct MessageDataSourceImpl: MessageDataSource {
    
    func getMessages() -> [Message] {
        return [
            Message(id: 1, text: "Hello World"),
            Message(id: 2, text: "Hello World 2"),
            Message(id: 3, text: "Hello World 3")
        ]
    }
}
