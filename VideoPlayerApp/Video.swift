//
//  Video.swift
//  VideoPlayerApp
//
//  Created by Din Salehy on 2025-03-04.
//
/*
import Foundation

struct Video: Identifiable {
    let id = UUID()
    let name: String
    let fileName: String
    
}
*/

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let name: String
    let fileName: String
    let thumbnail: UIImage?
    let duration: String
}
