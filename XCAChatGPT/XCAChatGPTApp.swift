//
//  XCAChatGPTApp.swift
//  XCAChatGPT
//
//  Created by Ramill Ibragimov on 05.02.2023.
//

import SwiftUI

@main
struct XCAChatGPTApp: App {
    
    @StateObject var vm = ViewModel(api: ChatGPTAPI(apiKey: Key.apiKey))
    
    var body: some Scene {
        WindowGroup {
            ContentView(vm: vm)
        }
    }
}
