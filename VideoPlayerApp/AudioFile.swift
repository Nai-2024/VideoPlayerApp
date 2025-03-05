//
//  AudioFile.swift
//  VideoPlayerApp
//
//  Created by Din Salehy on 2025-03-05.
//


import SwiftUI

struct AudioFile: Identifiable {
    let id = UUID()
    let name: String
    let fileName: String
    let duration: String
}
