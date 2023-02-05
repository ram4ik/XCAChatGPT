//
//  ContentView.swift
//  XCAChatGPT
//
//  Created by Ramill Ibragimov on 05.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Task {
                let api = ChatGPTAPI(apiKey: Key.apiKey)
                do {
//                    let stream = try await api.sendMessageStream(text: "Who is James Bond")
//                    for try await line in stream {
//                        print(line)
//                    }
                    let text = try await api.sendMessage(text: "Who is James Bond?")
                    print(text)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
