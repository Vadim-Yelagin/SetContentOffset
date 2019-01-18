//
//  ViewController.swift
//  SetContentOffset
//
//  Created by Vadim Yelagin on 18/01/2019.
//  Copyright © 2019 Vadim Yelagin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var progressView: UIView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        start()
    }

    func start() {
        progressView.frame.size.width = 0
        UIView.animate(
            withDuration: 5,
            delay: 0,
            options: [.curveLinear, .allowUserInteraction],
            animations: {
                self.progressView.frame.size.width = self.view.bounds.size.width
            }, completion: { _ in
                //self.scrollView.setContentOffset(.zero, animated: false)
                self.scrollView.contentOffset.y = 0
                self.start()
            }
        )
    }
}

