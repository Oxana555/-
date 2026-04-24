import SwiftUI

struct MainTabContainerView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        VStack(spacing: 0) {
            Group {
                switch selectedTab {
                case .home: HomeDashboardView()
                case .upload: UploadView()
                case .results: ResultsView()
                case .pricing: PricingView()
                case .profile: ProfileView()
                case .settings: SettingsView()
                }
            }
            DSTabBar(selection: $selectedTab)
        }
        .background(DSColor.background.ignoresSafeArea())
    }
}
