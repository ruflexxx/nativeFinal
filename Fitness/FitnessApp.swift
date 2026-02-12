

import SwiftUI

@main
struct FitnessApp: App {
    private let dataManager: CoreDataManager = .shared

    var body: some Scene {
        WindowGroup {
            TabBarView(dataManager: dataManager)
        }
    }
}
