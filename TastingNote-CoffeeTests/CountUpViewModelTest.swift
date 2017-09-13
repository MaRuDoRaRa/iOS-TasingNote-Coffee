//
//  CountUpViewModelTest.swift
//  TastingNote-Coffee
//
//  Created by Miraitechno Mac Book Pro on 2017/09/14.
//  Copyright © 2017年 Junichi Maruyama. All rights reserved.
//

import Quick
import Nimble
import RxSwift
@testable import TastingNote_Coffee


class CountUpModelTests: QuickSpec {
    
    var viewModel: CountUpViewModel!

    
    override func spec() {
        
        beforeEach {
            self.viewModel = CountUpViewModel()
        }
        
        describe("カウンタの制御") {
            context("カウントアップした時") {
                beforeEach {
                }
                
                it("カウントが１加算されていること") {
                    self.viewModel.countUp()
                    expect(self.viewModel.count.value).to(equal(1))
                }
            }
            
            context("カウントダウンした時") {
                beforeEach {
                }
                
                it("カウントが１減算されていること") {
                    self.viewModel.countDown()
                    expect(self.viewModel.count.value).to(equal(-1))
                }
            }
            
            context("リセットした時") {
                beforeEach {
                }
                
                it("カウントが0になること") {
                    self.viewModel.reset()
                    expect(self.viewModel.count.value).to(equal(0))
                }
            }
        }
    }
}
