//
//  VideoListView.swift
//  VideoPlayerApp
//
//  Created by Din Salehy on 2025-03-04.
//

import SwiftUI

struct VideoListView: View {
    @StateObject private var videoLoader = VideoLoader()

    var body: some View {
        NavigationView {
            List(videoLoader.videos) { video in
                NavigationLink(destination: VideoPlayerView(fileName: video.fileName)) {
                    Text(video.name)
                }

                }
            }
            .navigationTitle("Videos")
        }
    }



#Preview {
    VideoListView()
}
