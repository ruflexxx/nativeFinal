
import SwiftUI

struct WorkoutBackgroundImageView: View {
    let background: String?
    
    var body: some View {
        Image(background ?? "")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
    }
}

#Preview {
    WorkoutBackgroundImageView(background: WorkoutType.running.background)
}
