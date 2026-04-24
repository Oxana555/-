import SwiftUI

struct DSInlineTextField: View {
    let title: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.xs) {
            Text(title)
                .font(DSTypography.caption)
                .foregroundStyle(DSColor.textSecondary)
            TextField("Enter \(title.lowercased())", text: $text)
                .padding(DSSpacing.md)
                .background(DSColor.surface)
                .clipShape(RoundedRectangle(cornerRadius: DSRadius.md, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: DSRadius.md, style: .continuous)
                        .stroke(DSColor.border, lineWidth: 1)
                )
                .font(DSTypography.body)
                .foregroundStyle(DSColor.textPrimary)
        }
    }
}
