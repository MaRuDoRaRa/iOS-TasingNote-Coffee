//
//  CountUpViewModelIO.swift
//  TastingNote-Coffee
//
//  Created by Miraitechno Mac Book Pro on 2017/09/14.
//  Copyright © 2017年 Junichi Maruyama. All rights reserved.
//

import Foundation
import RxSwift


protocol CountUpViewModelOutput {
    var count: Property<Int> { get }
    
    func countUp()
    func countDown()
    func reset()
}
