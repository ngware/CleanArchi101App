//
//  MessageListView.swift
//  CleanArch101
//
//  Created by Nicolas Guyot on 15/05/2024.
//

import SwiftUI

struct MessageListView: View {
    
    @StateObject var viewModel = MessageListViewModel()
    
    var body: some View {
        VStack {
            Text("Messages: ")
            List(viewModel.messages) { message in
                Text(message.text)
            }
        }
        .task {
            viewModel.getMessages()
        }
    }
}


