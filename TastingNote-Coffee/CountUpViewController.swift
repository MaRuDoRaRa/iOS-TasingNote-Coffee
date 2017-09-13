//
//  CountUpViewController.swift
//  TastingNote-Coffee
//
//  Created by Miraitechno Mac Book Pro on 2017/09/13.
//  Copyright © 2017年 Junichi Maruyama. All rights reserved.
//

import UIKit
import RxSwift


class CountUpViewController: UIViewController {
    
    /*
     Properties
    */
    private let disposeBag = DisposeBag()

    private var viewModel = CountUpViewModel()
    
    // MARK: -Views

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpBtn: UIButton!
    @IBOutlet weak var countDownBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    

    /*
     Functions
     */

    // MARK: -VC LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        observeViewModel()
    }

    private func observeViewModel() {
        viewModel.count.asObservable()
            .map {String($0)}
            .bind(to: countLabel.rx.text)
            .addDisposableTo(disposeBag)
        
        countUpBtn.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.viewModel.countUp()
            })
            .addDisposableTo(disposeBag)
        
        countDownBtn.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.viewModel.countDown()
            })
            .addDisposableTo(disposeBag)

        resetBtn.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.viewModel.reset()
            })
            .addDisposableTo(disposeBag)
    }
}

