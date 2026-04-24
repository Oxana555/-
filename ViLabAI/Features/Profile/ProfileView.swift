import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.lg) {
                DSNavigationBar(title: "Profile", subtitle: "Manage your brand workspace")
                GlassCard {
                    VStack(alignment: .leading, spacing: DSSpacing.sm) {
                        Text("Evelyn Carter")
                            .font(DSTypography.headline)
                        Text("Creative Director")
                            .font(DSTypography.body)
                            .foregroundStyle(DSColor.textSecondary)
                    }
                }
                SecondaryButton(title: "Edit Profile") {}
            }
            .padding(.horizontal, DSSpacing.lg)
            .padding(.bottom, DSSpacing.xl)
        }
    }
}
