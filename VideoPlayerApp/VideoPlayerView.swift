//
//  VideoPlayerView.swift
//  VideoPlayerApp
//
//  Created by Din Salehy on 2025-03-04.
//
import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let fileName: String
    @State private var player: AVPlayer? // Declare the player as a state

    var body: some View {
        VStack {
            if let player = player {
                VideoPlayer(player: player)
                    .onAppear {
                        player.play()
                    }
                    .onDisappear {
                        player.pause()
                        player.seek(to: .zero)
                    }
            } else {
                Text("Video not found")
                    .foregroundColor(.red)
                    .onAppear {
                        print("❌ Video not found: \(fileName)")
                    }
            }
        }
        .onAppear {
            loadVideo()
        }
    }

    private func loadVideo() {
        if let path = Bundle.main.path(forResource: fileName, ofType: nil) {
            player = AVPlayer(url: URL(fileURLWithPath: path))
        } else {
            print("❌ Video not found: \(fileName)")
        }
    }
}


#Preview {
    VideoPlayerView(fileName: "Video2.mp4")
}
