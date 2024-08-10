//
//  DateFilterView.swift
//  budget-tracker
//
//  Created by Егор Терёшкин on 10.08.2024.
//

import SwiftUI

struct DateFilterView: View {
    
    @State var start: Date
    @State var end: Date
    
    var onSubmit: (Date, Date) -> ()
    var onClose: () -> ()
    var body: some View {
        VStack(spacing: 15) {
            DatePicker("Start Date", selection: $start, displayedComponents: [.date])
                .tint(appTint)

            
            DatePicker("End Date", selection: $end, displayedComponents: [.date])
                .tint(appTint)
            
            HStack(spacing: 15) {
                Button("Закрыть") {
                    onClose()
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(.red)
                
                Button("Фильтровать") {
                    onSubmit(start, end)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(appTint)
            }
            .padding(.top, 10)
        }
        .padding(15)
        .background(.bar, in: .rect(cornerRadius: 10))
        .padding(.horizontal, 30)
    }
}
