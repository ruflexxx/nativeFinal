

import Foundation
import CoreData

extension DistanceEntity {
    @NSManaged public var id: UUID
    @NSManaged public var workoutType: Int16
    @NSManaged public var date: Date?
    @NSManaged public var type: Int16
    @NSManaged public var measure: Double
    @NSManaged public var workout: WorkoutEntity?
}
