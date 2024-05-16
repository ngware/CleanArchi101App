//
//  MessageListViewModel.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import Foundation

class MessageListViewModel: ObservableObject {
    
    var getMessagesUseCase = GetMessagesUseCase(repository: MessageRepositoryImpl(dataSource: MessageDataSourceImpl()))
    
    @Published var messages: [Message] = []
    
    func getMessages() {
        let result = getMessagesUseCase.execute()
        switch result {
        case .success(let messages):
            self.messages = messages
        case .failure(let error):
            print(error)
        }
    }
}
