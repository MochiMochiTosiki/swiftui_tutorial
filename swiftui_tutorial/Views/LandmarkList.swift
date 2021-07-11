//
//  LandmarkList.swift
//  swiftui_tutorial
//
//  Created by 望月紀生 on 2021/07/10.
//

import SwiftUI

enum Food: String, CaseIterable, Identifiable {
    case sushi = "すし"
    case pasuta = "パスタ"
    case curry = "カレー"
    
    var id: String { self.rawValue }
}

struct LandmarkList: View {
    @State private var selectedFood = Food.sushi
    var body: some View {
        VStack {
            Picker("Food", selection: $selectedFood) {
                ForEach(Food.allCases) { food in
                    Text(food.rawValue.capitalized)
                        .tag(food)
                }
                
            let _ = print(selectedFood)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("選択中のメニュー: ")
            Text(selectedFood.rawValue)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
