//
//  Tab.swift
//  budget-tracker
//
//  Created by Егор Терёшкин on 09.08.2024.
//

import SwiftUI

enum Tab: String {
    case recents = "Недавние"
    case search = "Поиск"
    case charts = "Графики"
    case settings = "Настройки"
    
    @ViewBuilder
    var tabContent: some View {
//        rowValue ??
        switch self {
        case .recents:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
        
    }
}
