
import Foundation

struct Distance: Metric, Hashable {
    let id: UUID
    let workoutType: WorkoutType?
    let date: Date?
    let type: Measure = .distance
    let measure: Measurement<UnitLength>

    var value: Double {
        measure.converted(to: .kilometers).value
    }
}
