//
//  ContentView.swift
//  budget-tracker
//
//  Created by Егор Терёшкин on 07.08.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Недавние")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            Text("Поиск")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            Text("Графики")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            Text("Настройки")
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
