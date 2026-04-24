import SwiftUI

struct PrimaryButton: View {
    let title: String
    var fullWidth: Bool = true
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(DSTypography.bodyStrong)
                .foregroundStyle(.white)
                .frame(maxWidth: fullWidth ? .infinity : nil)
                .padding(.vertical, DSSpacing.md)
                .padding(.horizontal, DSSpacing.lg)
                .background(
                    LinearGradient(colors: [DSColor.accent, DSColor.accentSecondary], startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(RoundedRectangle(cornerRadius: DSRadius.md, style: .continuous))
                .shadow(color: DSColor.accent.opacity(0.25), radius: 16, y: 6)
        }
    }
}

struct SecondaryButton: View {
    let title: String
    var fullWidth: Bool = true
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(DSTypography.bodyStrong)
                .foregroundStyle(DSColor.textPrimary)
                .frame(maxWidth: fullWidth ? .infinity : nil)
                .padding(.vertical, DSSpacing.md)
                .padding(.horizontal, DSSpacing.lg)
                .background(DSColor.surfaceElevated)
                .overlay(
                    RoundedRectangle(cornerRadius: DSRadius.md, style: .continuous)
                        .stroke(DSColor.border, lineWidth: 1)
                )
                .clipShape(RoundedRectangle(cornerRadius: DSRadius.md, style: .continuous))
        }
    }
}
