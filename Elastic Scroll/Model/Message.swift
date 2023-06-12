//
//  MessageModel.swift
//  Elastic Scroll
//
//  Created by Erif Fanani on 05/06/23.
//

import SwiftUI

struct Message: Identifiable {
    var id: UUID = .init()
    var image: String
    var name: String
    var message: String
    var online: Bool
    var read: Bool
    var notification: Int
}

let sampleMessage: [Message] = [

    .init(
        image: "img1", name: "iJustine",
        message: "Hi, What's up?", online: true, read: false,
        notification: Int.random(in: 1...10)
    ),
        
    .init(
        image: "img2", name: "Miranda",
        message: "Did you just arrive here?", online: false, read: false,
        notification: Int.random(in: 1...10)
    ),
        
    .init(
        image: "img3", name: "Jenna",
        message: "Yes, I am married and I have two children.",
        online: false, read: true, notification: 0
    ),
        
    .init(
        image: "img4", name: "Emily",
        message: "Oh, great. That age is a lot of fun.",
        online: true, read: true, notification: 0
    ),
    
    .init(
        image: "img5", name: "Stooner",
        message: "Speaking English all day can be exhausting.",
        online: false, read: true, notification: 0
    ),
    
    .init(
        image: "img6", name: "Angel",
        message: "What about you?", online: true, read: false,
        notification: Int.random(in: 1...10)
    ),
    
    .init(
        image: "img7", name: "Carlos",
        message: "6 and 8 years old", online: false, read: true,
        notification: 0
    ),
    
    .init(
        image: "img1", name: "iJustine",
        message: "Hi, What's up?", online: true, read: false,
        notification: Int.random(in: 1...10)
    ),
        
    .init(
        image: "img2", name: "Miranda",
        message: "Did you just arrive here?", online: false, read: false,
        notification: Int.random(in: 1...10)
    ),
        
    .init(
        image: "img3", name: "Jenna",
        message: "Yes, I am married and I have two children.",
        online: false, read: true, notification: 0
    ),
        
    .init(
        image: "img4", name: "Emily",
        message: "Oh, great. That age is a lot of fun.",
        online: true, read: true, notification: 0
    ),
    
    .init(
        image: "img5", name: "Stooner",
        message: "Speaking English all day can be exhausting.",
        online: false, read: true, notification: 0
    ),
    
    .init(
        image: "img6", name: "Angel",
        message: "What about you?", online: true, read: false,
        notification: Int.random(in: 1...10)
    ),
    
    .init(
        image: "img7", name: "Carlos",
        message: "6 and 8 years old", online: false, read: true,
        notification: 0
    ),
    
    .init(
        image: "img1", name: "iJustine",
        message: "Hi, What's up?", online: true, read: false,
        notification: Int.random(in: 1...10)
    ),
        
    .init(
        image: "img2", name: "Miranda",
        message: "Did you just arrive here?", online: false, read: false,
        notification: Int.random(in: 1...10)
    ),
        
    .init(
        image: "img3", name: "Jenna",
        message: "Yes, I am married and I have two children.",
        online: false, read: true, notification: 0
    ),
        
    .init(
        image: "img4", name: "Emily",
        message: "Oh, great. That age is a lot of fun.",
        online: true, read: true, notification: 0
    ),
    
    .init(
        image: "img5", name: "Stooner",
        message: "Speaking English all day can be exhausting.",
        online: false, read: true, notification: 0
    ),
    
    .init(
        image: "img6", name: "Angel",
        message: "What about you?", online: true, read: false,
        notification: Int.random(in: 1...10)
    ),
    
    .init(
        image: "img7", name: "Carlos",
        message: "6 and 8 years old", online: false, read: true,
        notification: 0
    ),

]
