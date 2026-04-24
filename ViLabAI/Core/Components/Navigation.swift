import SwiftUI

struct DSNavigationBar: View {
    let title: String
    var subtitle: String?

    var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.xs) {
            Text(title)
                .font(DSTypography.title)
                .foregroundStyle(DSColor.textPrimary)
            if let subtitle {
                Text(subtitle)
                    .font(DSTypography.caption)
                    .foregroundStyle(DSColor.textSecondary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, DSSpacing.lg)
        .padding(.top, DSSpacing.sm)
    }
}

struct DSTabBar: View {
    @Binding var selection: AppTab

    var body: some View {
        HStack(spacing: DSSpacing.sm) {
            ForEach(AppTab.allCases, id: \.self) { tab in
                Button {
                    selection = tab
                } label: {
                    VStack(spacing: DSSpacing.xs) {
                        Image(systemName: tab.icon)
                        Text(tab.title).font(DSTypography.caption)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, DSSpacing.sm)
                    .foregroundStyle(selection == tab ? DSColor.accent : DSColor.textSecondary)
                }
            }
        }
        .padding(DSSpacing.sm)
        .background(DSColor.surface)
        .clipShape(RoundedRectangle(cornerRadius: DSRadius.lg, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: DSRadius.lg, style: .continuous)
                .stroke(DSColor.border.opacity(0.6), lineWidth: 1)
        )
        .padding(.horizontal, DSSpacing.lg)
        .padding(.bottom, DSSpacing.sm)
    }
}

struct AlertBanner: View {
    let text: String
    let tint: Color

    var body: some View {
        HStack(spacing: DSSpacing.sm) {
            Image(systemName: "bell.badge.fill")
            Text(text).font(DSTypography.caption)
            Spacer()
        }
        .foregroundStyle(tint)
        .padding(DSSpacing.md)
        .background(tint.opacity(0.14))
        .clipShape(RoundedRectangle(cornerRadius: DSRadius.md, style: .continuous))
    }
}
