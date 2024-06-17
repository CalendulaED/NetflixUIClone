//
//  ShareButton.swift
//  NetflixClone
//
//  Created by Yuxuan Wu on 6/14/24.
//

import SwiftUI

struct ShareButton: View {
    
    var url: String = "https://www.awuawuawu.com"
    
    var body: some View {
        
        if let url = URL(string: url) {
            ShareLink(item: url) {
                VStack(spacing: 8) {
                    Image(systemName: "paperplane")
                        .font(.title)
                    
                    Text("Share")
                        .font(.caption)
                        .foregroundStyle(.netflixLightGray)
                }
                .foregroundStyle(.netflixWhite)
                .padding(8)
                .background(Color.black.opacity(0.001))
            }
        }
        
    }
}

#Preview {
    ZStack {
        Color.netflixBlack.ignoresSafeArea()
        
        ShareButton()
    }
}