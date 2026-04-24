import SwiftUI

struct RootView: View {
    @State private var didFinishOnboarding = false

    var body: some View {
        Group {
            if didFinishOnboarding {
                MainTabContainerView()
            } else {
                OnboardingView {
                    withAnimation(.spring()) {
                        didFinishOnboarding = true
                    }
                }
            }
        }
        .background(DSColor.background.ignoresSafeArea())
    }
}
