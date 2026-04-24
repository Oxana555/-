import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.lg) {
                DSNavigationBar(title: "Settings", subtitle: "Personalize your app")
                GlassCard {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Notifications")
                            .font(DSTypography.body)
                            .foregroundStyle(DSColor.textPrimary)
                    }
                    .tint(DSColor.accent)
                }
                AlertBanner(text: "Dark mode follows system appearance", tint: DSColor.accent)
            }
            .padding(.horizontal, DSSpacing.lg)
            .padding(.bottom, DSSpacing.xl)
        }
    }
}
