//
//  CountUpViewModel.swift
//  TastingNote-Coffee
//
//  Created by Miraitechno Mac Book Pro on 2017/09/13.
//  Copyright © 2017年 Junichi Maruyama. All rights reserved.
//

import Foundation
import RxSwift


class CountUpViewModel: CountUpViewModelOutput {

    public var count: Property<Int>
    private var _count = Variable<Int>(0)
    
    
    init() {
        self.count = Property(_count)
    }
    
    
    func countUp() {
        _count.value += 1
    }
    
    func countDown() {
        _count.value -= 1
    }
    
    func reset() {
        _count.value = 0
    }

    
    
}
