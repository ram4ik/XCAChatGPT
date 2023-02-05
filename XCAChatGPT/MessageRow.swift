//
//  MessageRow.swift
//  XCAChatGPT
//
//  Created by Ramill Ibragimov on 05.02.2023.
//

import SwiftUI

struct MessageRow: Identifiable {
    
    let id = UUID()
    
    var isInteractingWithChatGTP: Bool
    
    let sendImage: String
    let sendText: String
    
    let responseImage: String
    var responseText: String
    
    var responseError: String?
}
