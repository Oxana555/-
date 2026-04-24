import SwiftUI

struct PricingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.lg) {
                DSNavigationBar(title: "Pricing", subtitle: "Choose your plan")
                ForEach(SampleData.plans, id: \.name) { plan in
                    PricingCard(plan: plan)
                }
                PrimaryButton(title: "Upgrade to Pro") {}
            }
            .padding(.horizontal, DSSpacing.lg)
            .padding(.bottom, DSSpacing.xl)
        }
    }
}
