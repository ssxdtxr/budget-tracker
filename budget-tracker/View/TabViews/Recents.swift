//
//  Recents.swift
//  budget-tracker
//
//  Created by Егор Терёшкин on 09.08.2024.
//

import SwiftUI

struct Recents: View {
    
    @AppStorage("userName") private var userName: String = ""
    var body: some View {
        GeometryReader { /// Используется для получение размеров экрана или контейнера
            let size = $0.size
            
            NavigationStack { /// Навигационная структура
                ScrollView(.vertical) {
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) { /// Оптимизированный VStack с подзагрузкой
                        Section {
                            
                        } header: {
                            HeaderView(size)
                        }
                    }
                    .padding(15)
                }
            }
        }
    }
    
    @ViewBuilder
    func HeaderView(_ size: CGSize) -> some View { /// (_ size), чтобы не писать HeaderView(size: size)
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Добро пожаловать!")
                    .font(.title.bold())
                
                if !userName.isEmpty {
                    Text(userName)
                        .font(.callout)
                        .foregroundStyle(.gray)
                }
            })
            .visualEffect { content, geometryProxy in
                content
                    .scaleEffect(headerScale(size, proxy: geometryProxy), anchor: .topLeading)
            }
            
            Spacer(minLength: 0)
            
            NavigationLink {
                
            } label: {
                Image(systemName: "plus")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 45, height: 45)
                    .background(appTint.gradient, in: .circle)
                    .contentShape(.circle)
            }
        }
        .padding(.bottom, 5)
        .background {
            Rectangle()
                .fill(.ultraThinMaterial)
                .padding(.horizontal, -15)
                .padding(.top, -(safeArea.top + 15)) // Позволяет захватить верхнюю безопасную зону
        }
    }
    
    func headerScale(_ size: CGSize, proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView).minY
        let screenHeight = size.height
      
        
        let progress = minY / screenHeight
        let scale = min(max(progress, 0), 1) * 0.4
        
        return 1 + scale
    }
}

#Preview {
    Recents()
}
