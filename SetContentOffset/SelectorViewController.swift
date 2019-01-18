//  Created by Vadim Yelagin on 18/01/2019.
//  Copyright © 2019 Vadim Yelagin. All rights reserved.

import UIKit

final class SelectorViewController: UITableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ScrollViewController else { return }
        vc.title = segue.identifier
        switch segue.identifier {
        case "setContentOffset"?:
            vc.action = { $0.setContentOffset(.zero, animated: false) }
        case "contentOffset"?:
            vc.action = { $0.contentOffset = .zero }
        case "bounds.origin"?:
            vc.action = { $0.bounds.origin = .zero }
        case "scrollRectToVisible"?:
            vc.action = { $0.scrollRectToVisible(CGRect(origin: .zero, size: CGSize(width: 1, height: 1)), animated: false) }
        default:
            break
        }
    }
}
