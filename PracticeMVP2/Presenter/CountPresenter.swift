//
//  CountPresenter.swift
//  PracticeMVP2
//
//  Created by KS on 2021/12/16.
//

import Foundation

final class CountPresenter {

    private let view: VCDelegate
    private let countModel: CountModel

    required init(view: VCDelegate, model: CountModel) {
        self.view = view
        self.countModel = model
    }

    func onCountUp(){
        countModel.num += 1
        view.onCountChange(num: countModel.num)
    }

    func onCountDown(){
        countModel.num -= 1
        view.onCountChange(num: countModel.num)
    }

    func initCountLabel() {
        countModel.num = 0
        view.onCountChange(num: countModel.num)
    }
}
