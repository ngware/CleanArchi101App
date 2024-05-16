//
//  GetMessages.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import Foundation

enum UseCaseError: Error {
    case networkError, decodingError, undefinedError
}

protocol GetMessagesProtocol {
    func execute() -> Result<[Message], UseCaseError>
}

struct GetMessagesUseCase: GetMessagesProtocol {
    var repository: MessageRepository
    
    
    func execute() -> Result<[Message], UseCaseError> {
        let messages = repository.getMessages()
        return .success(messages)
    }
}
