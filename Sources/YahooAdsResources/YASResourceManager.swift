//
//  Copyright (c) 2022 Yahoo. All rights reserved.
//

import Foundation

@objc
class YASResourceManager: NSObject {

    @objc dynamic static func resourceBundlePath() -> String? {
        Bundle.module.path(forResource: "YahooAdsResources", ofType: "bundle")
    }
}
