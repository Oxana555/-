import SwiftUI

struct GlassCard<Content: View>: View {
    @ViewBuilder let content: Content

    var body: some View {
        content
            .padding(DSSpacing.lg)
            .background(.ultraThinMaterial)
            .background(DSColor.glass)
            .clipShape(RoundedRectangle(cornerRadius: DSRadius.lg, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: DSRadius.lg, style: .continuous)
                    .stroke(DSColor.border.opacity(0.45), lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.08), radius: 20, y: 8)
    }
}

struct PricingCard: View {
    let plan: PricingPlan

    var body: some View {
        GlassCard {
            VStack(alignment: .leading, spacing: DSSpacing.sm) {
                Text(plan.name).font(DSTypography.headline)
                Text(plan.price).font(DSTypography.title)
                Text(plan.description).font(DSTypography.body).foregroundStyle(DSColor.textSecondary)
                ForEach(plan.features, id: \.self) { feature in
                    Label(feature, systemImage: "checkmark.circle.fill")
                        .font(DSTypography.caption)
                        .foregroundStyle(DSColor.success)
                }
            }
            .foregroundStyle(DSColor.textPrimary)
        }
    }
}

struct UploadCard: View {
    var body: some View {
        GlassCard {
            VStack(alignment: .leading, spacing: DSSpacing.md) {
                Label("Drag & drop or browse", systemImage: "square.and.arrow.up")
                    .font(DSTypography.bodyStrong)
                Text("Supported: JPG, PNG, HEIC • Up to 25MB")
                    .font(DSTypography.caption)
                    .foregroundStyle(DSColor.textSecondary)
                SecondaryButton(title: "Choose File") {}
            }
        }
    }
}

struct ResultCard: View {
    let item: ResultItem

    var body: some View {
        GlassCard {
            VStack(alignment: .leading, spacing: DSSpacing.sm) {
                HStack {
                    Text(item.title).font(DSTypography.bodyStrong)
                    Spacer()
                    Text(item.status.rawValue)
                        .font(DSTypography.caption)
                        .padding(.horizontal, DSSpacing.sm)
                        .padding(.vertical, DSSpacing.xs)
                        .background(item.status.color.opacity(0.2))
                        .clipShape(Capsule())
                }
                Text(item.summary)
                    .font(DSTypography.body)
                    .foregroundStyle(DSColor.textSecondary)
            }
        }
    }
}
