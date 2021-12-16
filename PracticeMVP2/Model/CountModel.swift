//
//  CountModel.swift
//  PracticeMVP2
//
//  Created by KS on 2021/12/16.
//

import Foundation

final class CountModel {
    var num: Int

    init(_ num: Int = 0) { self.num = num }

    func countUp() { num += 1 }
    func countDown() { num -= 1 }
}
