//
//  FruitViewModel.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import Foundation

class FruitViewModel: ObservableObject {
    
    // Published wrapper는 @State와 비슷하게 상태값을 선언하는데, class 안에서는 @Published를 사용한다는 점이 다르다. @Published는 Fruit 배열의 값이 View에서 변경이 되면 FruitViewModel에서 새로운 변경사항을 알아차려서 변경한다는 점이다.
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // init
    init() {
        getFruit()
    }
    
    // function
    func getFruit() {
        
        // fruit의 각각의 값 선언
        let fruit1 = FruitModel(name: "Strawberry", count: 1)
        let fruit2 = FruitModel(name: "Apple", count: 2)
        let fruit3 = FruitModel(name: "Banana", count: 33)
        
        // 3초 딜레이 후, fruitArray에 선언된 값을 집어넣기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
            
        }
    }
    
    // fruitArray에서 값을 삭제하는 logic
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

