//
//  String+Localization.swift
//  TestLocalizer
//
//  Created by Sebastian Aguirre on 9/25/25.
//

import Foundation

extension String {
    var localized: String {
        String(localized: self as String.LocalizationValue)
        //NSLocalizedString(self, comment: "")
    }
}
