//
//  MainView.swift
//  VideoPlayerApp
//
//  Created by Din Salehy on 2025-03-05.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                VideoListView()
            }
            .tabItem {
                Label("Videos", systemImage: "film")
            }

            NavigationView {
                AudioListView() // Now displays audio files
            }
            .tabItem {
                Label("Audio", systemImage: "music.note")
            }
        }
    }
}



#Preview {
    MainView()
}
