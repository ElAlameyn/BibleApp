//
//  ContentView.swift
//  BibleApp
//
//  Created by Артем Калинкин on 28.04.2023.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationStack {
      ZStack {
        Color.gray.opacity(0.3)
          .opacity(0.3)
          .ignoresSafeArea()

        VStack {
          Image("bible")
            .homeScreenDefaultPrayersConfiguration(
              .init(width: 320, height: 240)
            )
            .overlay(
              LinearGradient(
                stops: [
                  Gradient.Stop(color: .white.opacity(0), location: 0.0),
                  Gradient.Stop(color: .white, location: 0.7),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
              )
              .frame(width: 320, height: 240)
              .clipped()
              .cornerRadius(16)
              .overlay(alignment: .leading) {
                VStack {
                  Spacer()
                  VStack(alignment: .leading) {
                    Text("Продолжить чтение")
                      .font(.title2)
                      .bold()
                    Text("Глава 3 / Стр. 23")
                      .font(.title3)
                  }
                  .padding()
                }
              }
            )
            .onTapGesture {

            }

          Text("Молитвенные правила")
            .font(.title)
            .bold()
            .padding(.leading, -40)

          ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              Image("morning_rule")
                .homeScreenCellSetup(mainText: "Утреннее\n правило")

              Image("evening_rule")
                .homeScreenCellSetup(mainText: "Вечернее\n правило")
            }
          }

          Spacer()
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Библия")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
