//
//  LandmarkList.swift
//  swiftui_tutorial
//
//  Created by 望月紀生 on 2021/07/10.
//

import SwiftUI

enum Food: String, CaseIterable, Identifiable {
    case sushi
    case pasuta
    case curry
    
    var id: String { self.rawValue }
}

struct LandmarkList: View {
    @State private var foodIndex = Food.sushi
    
    var body: some View {
        Picker("Food", selection: $foodIndex) {
            ForEach(Food.allCases) { food in
                Text(food.rawValue.capitalized)
                    .tag(food)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
