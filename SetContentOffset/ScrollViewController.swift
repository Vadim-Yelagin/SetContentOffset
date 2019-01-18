//  Created by Vadim Yelagin on 18/01/2019.
//  Copyright © 2019 Vadim Yelagin. All rights reserved.

import UIKit

final class ScrollViewController: UIViewController {
    @IBOutlet private var scrollView: UIScrollView!
    @IBOutlet private var progressView: UIView!

    var action: ((UIScrollView) -> Void)?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        start()
    }

    private func start() {
        progressView.frame.size.width = 0
        UIView.animate(
            withDuration: 5,
            delay: 0,
            options: [.curveLinear, .allowUserInteraction],
            animations: {
                self.progressView.frame.size.width = self.view.bounds.size.width
            }, completion: { _ in
                self.action?(self.scrollView)
                self.start()
            }
        )
    }
}

