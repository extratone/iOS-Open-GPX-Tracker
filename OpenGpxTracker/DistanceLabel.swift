//
//  UIDistanceLabel.swift
//  OpenGpxTracker
//
//  Created by merlos on 01/10/15.
//

import Foundation
import UIKit
import MapKit

///
/// A label to display distances.
///
/// The text is displated in meters if is less than 1km (for instance "980m") and in
/// km with two decimals if it is larger than 1km (for instance "1.20km").
///
/// If `useImperial` is true, it displays the distance always in miles ("0.23mi").
///
/// To update the text displayed set the `distance` property.
///
open class DistanceLabel: UILabel {
    
    // Use imperial distance. False by default.
    open var useImperial: Bool = false
    
    /// Distance in meters.
    open var distance: CLLocationDistance {
        get {
            return 0
        }
        set {
            self.text = newValue.toDistance(useImperial: useImperial)
        }
    }
}
