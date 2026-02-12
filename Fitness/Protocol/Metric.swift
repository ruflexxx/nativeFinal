
import Foundation

protocol Metric {
    var id: UUID { get }
    var workoutType: WorkoutType? { get }
    var date: Date? { get }
    var type: Measure { get }
    var value: Double { get }
}
