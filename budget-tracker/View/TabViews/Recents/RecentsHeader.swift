////
////  RecentsHeader.swift
////  budget-tracker
////
////  Created by Егор Терёшкин on 10.08.2024.
////
//
//import SwiftUI
//
//struct RecentsHeader: View {
//    
//    @AppStorage("userName") private var userName: String = ""
//    
//    var body: some View {
//        HStack(spacing: 10) {
//            VStack(alignment: .leading, spacing: 5, content: {
//                Text("Добро пожаловать!")
//                    .font(.title.bold())
//                
//                if !userName.isEmpty {
//                    Text(userName)
//                        .font(.callout)
//                        .foregroundStyle(.gray)
//                }
//            })
//            .visualEffect { content, geometryProxy in
//                content
//                    .scaleEffect(headerScale(size, proxy: geometryProxy), anchor: .topLeading)
//            }
//            
//            Spacer(minLength: 0)
//            
//            NavigationLink {
//                
//            } label: {
//                Image(systemName: "plus")
//                    .font(.title3)
//                    .fontWeight(.semibold)
//                    .foregroundStyle(.white)
//                    .frame(width: 45, height: 45)
//                    .background(appTint.gradient, in: .circle)
//                    .contentShape(.circle)
//            }
//        }
//        .padding(.bottom, userName.isEmpty ? 10 : 5)
//        .background {
//            VStack(spacing: 0) {
//                Rectangle()
//                    .fill(.ultraThinMaterial)
//                
//                Divider()
//            }
//            .visualEffect { content, geometryProxy in
//                content
//                    .opacity(headerBGOpacity(geometryProxy))
//            }
//            .padding(.horizontal, -15)
//            .padding(.top, -(safeArea.top + 15)) // Позволяет захватить верхнюю безопасную зону
//            
//        }
//    }
//}
//
//#Preview {
//    RecentsHeader()
//}
