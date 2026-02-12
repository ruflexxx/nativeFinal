
import Foundation

struct Step: Metric, Hashable {
    let id: UUID
    let workoutType: WorkoutType?
    let date: Date?
    let type: Measure = .step
    let count: Int

    var value: Double {
        Double(count)
    }
}
