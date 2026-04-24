import SwiftUI

struct HomeDashboardView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.lg) {
                DSNavigationBar(title: "Dashboard", subtitle: "Welcome back to ViLab AI")
                AlertBanner(text: "3 jobs completed in the last 24 hours", tint: DSColor.success)
                GlassCard {
                    VStack(alignment: .leading, spacing: DSSpacing.sm) {
                        Text("This Week")
                            .font(DSTypography.caption)
                            .foregroundStyle(DSColor.textSecondary)
                        Text("1,248 Credits Used")
                            .font(DSTypography.title)
                    }
                }
                ForEach(SampleData.results, id: \.title) { item in
                    ResultCard(item: item)
                }
            }
            .padding(.horizontal, DSSpacing.lg)
            .padding(.bottom, DSSpacing.xl)
        }
    }
}
