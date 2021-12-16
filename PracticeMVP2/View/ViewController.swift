//
//  ViewController.swift
//  PracticeMVP2
//
//  Created by KS on 2021/12/16.
//

import UIKit

protocol VCDelegate: class {
    func onCountChange(num: Int)
}

class ViewController: UIViewController {

    @IBOutlet weak private var countLabel: UILabel!

    private var presenter: CountPresenter?
    private var countModel: CountModel!


    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    private func initialize() {
        countModel = CountModel()
        presenter = CountPresenter(view: self, model: countModel)
    }

    @IBAction func plusButtonDidTap(_ sender: Any) {
        presenter?.onCountUp()
    }

    @IBAction func minusButtonDidTap(_ sender: Any) {
        presenter?.onCountDown()
    }

    @IBAction func resetButtonDidTap(_ sender: Any) {
        presenter?.initCountLabel()
    }
}

// MARK: CountViewDelegate
extension ViewController: VCDelegate {
    internal func onCountChange(num: Int) {
        countLabel.text = String(num)
    }
}

