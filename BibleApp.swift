//
//  BibleAppApp.swift
//  BibleApp
//
//  Created by Артем Калинкин on 28.04.2023.
//

import HomeFeature
import SwiftUI

@main
struct BibleApp: App {
  var body: some Scene {
    WindowGroup {
      HomeView(store: .init(initialState: .init(), reducer: {
        HomeFeature()
      }))
    }
  }
}


