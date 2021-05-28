//
//  YouTubePlayer.swift
//  Living Alone
//
//  pod "youtube-ios-player-helper"
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI
import UIKit
import youtube_ios_player_helper

struct YouTubePlayer: UIViewRepresentable {
    let id: String

    func makeUIView(context: Context) -> YTPlayerView {
        let player = YTPlayerView(frame: .zero)
        player.load(withVideoId: id)
        return player
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        uiView.backgroundColor = .blue
    }
}

struct YouTubePlayer_Previews: PreviewProvider {
    static var previews: some View {
        YouTubePlayer(id: "GEZhD3J89ZE")
    }
}
