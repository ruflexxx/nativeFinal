
import Foundation

struct Speed: Metric, Hashable {
    let id: UUID
    let workoutType: WorkoutType?
    let date: Date?
    let type: Measure = .speed
    let measure: Measurement<UnitSpeed>

    var value: Double {
        measure.converted(to: .kilometersPerHour).value
    }
}
