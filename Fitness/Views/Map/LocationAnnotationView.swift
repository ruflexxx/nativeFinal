

import Foundation
import MapKit

class LocationAnnotationView: MKAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            frame = CGRect(origin: .zero, size: CGSize(width: 25, height: 25))
            layer.cornerRadius = 12.5
            layer.borderWidth = 2
        }
    }
}
