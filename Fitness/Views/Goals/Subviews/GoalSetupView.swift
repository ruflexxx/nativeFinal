
import SwiftUI

struct GoalSetupView: View {
    let measureType: String
    let measureValue: String
    let unitOfMeasure: String
    let increaseAction: () -> Void
    let decreaseAction: () -> Void

    var body: some View {
        VStack(alignment: .leading) {
            Text(measureType)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.accentColor)
                .padding(.horizontal, 20)
            HStack {
                DecreaseGoalButtonView {
                    decreaseAction()
                }
                Spacer()
                VStack {
                    Text(measureValue)
                    Text(unitOfMeasure)
                }
                .font(.title)
                .fontWeight(.semibold)
                Spacer()
                IncreaseGoalButtonView {
                    increaseAction()
                }
            }
            .padding(.horizontal, 20)
            .foregroundStyle(.gray)
        }
    }
}

#Preview {
    VStack(spacing: 50) {
        GoalSetupView(
            measureType: "Distance",
            measureValue: "5",
            unitOfMeasure: "km"
        ) {} decreaseAction: {}
        GoalSetupView(
            measureType: "Calories",
            measureValue: "500",
            unitOfMeasure: "kcal"
        ) {} decreaseAction: {}
        GoalSetupView(
            measureType: "Steps",
            measureValue: "10 000",
            unitOfMeasure: "steps"
        ) {} decreaseAction: {}
    }
}
