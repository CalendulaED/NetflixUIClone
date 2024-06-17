//
//  ContentView.swift
//  NetflixClone
//
//  Created by Yuxuan Wu on 6/11/24.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("Open Netflix") {
                router.showScreen(.fullScreenCover) { _ in
                    NetflixHomeView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
