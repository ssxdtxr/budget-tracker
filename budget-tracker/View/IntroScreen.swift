//
//  IntroScreen.swift
//  budget-tracker
//
//  Created by Егор Терёшкин on 09.08.2024.
//

import SwiftUI

struct IntroScreen: View {
    
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Что нового в Budget Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            VStack(alignment: .leading, spacing: 25) {
                PointView(sympol:  "dollarsign", title: "Транзакции", subTitle: "Отслеживайте свои доходы и расходы")
                PointView(sympol: "chart.bar.fill", title: "Визуальные Диаграммы", subTitle: "Просматривайте свои транзакции с помощью привлекательного графического представления")
                PointView(sympol: "magnifyingglass", title: "Предварительный Фильтр", subTitle: "Находите н ужные вам расходы с помощью предварительного поиска и фильтрации")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Продолжить ")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
        
    }
    
    @ViewBuilder
    func PointView(sympol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 15) {
            Image(systemName: sympol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
                    
            })
        }
    }
}

#Preview {
    IntroScreen()
}
