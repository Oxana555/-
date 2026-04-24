import SwiftUI

struct OnboardingView: View {
    var onContinue: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.xl) {
            Spacer()
            Text("ViLab AI")
                .font(DSTypography.display)
                .foregroundStyle(DSColor.textPrimary)
            Text("Premium AI visuals for modern studios.")
                .font(DSTypography.headline)
                .foregroundStyle(DSColor.textSecondary)

            GlassCard {
                VStack(alignment: .leading, spacing: DSSpacing.sm) {
                    Label("Luxury-grade rendering", systemImage: "sparkles")
                    Label("Fast upload + processing", systemImage: "bolt.fill")
                    Label("Pricing built for scale", systemImage: "crown.fill")
                }
                .font(DSTypography.body)
                .foregroundStyle(DSColor.textPrimary)
            }
            Spacer()
            PrimaryButton(title: "Get Started", action: onContinue)
        }
        .padding(DSSpacing.xl)
        .background(DSColor.background.ignoresSafeArea())
    }
}
