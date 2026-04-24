import SwiftUI

// Mirrors tokens/chanel-design-tokens.json.
enum DSColor {
    static let background = dynamic(light: "#F7F7F5", dark: "#0D0F14")
    static let surface = dynamic(light: "#FFFFFF", dark: "#161A22")
    static let surfaceElevated = dynamic(light: "#F1F2F4", dark: "#1F2430")
    static let textPrimary = dynamic(light: "#111111", dark: "#F3F5F8")
    static let textSecondary = dynamic(light: "#4A4F57", dark: "#A8B0BE")
    static let accent = dynamic(light: "#6366F1", dark: "#8B93FF")
    static let accentSecondary = dynamic(light: "#A855F7", dark: "#C084FC")
    static let success = dynamic(light: "#0EA56B", dark: "#30D49A")
    static let warning = dynamic(light: "#D97706", dark: "#F6AD55")
    static let error = dynamic(light: "#D14343", dark: "#FF7A7A")
    static let border = dynamic(light: "#D8DCE2", dark: "#2F3643")
    static let glass = dynamic(light: "#FFFFFF99", dark: "#1B223099")

    private static func dynamic(light: String, dark: String) -> Color {
        Color(
            UIColor { traitCollection in
                traitCollection.userInterfaceStyle == .dark ? UIColor(hex: dark) : UIColor(hex: light)
            }
        )
    }
}

enum DSTypography {
    static let display = Font.system(size: 34, weight: .bold)
    static let title = Font.system(size: 24, weight: .semibold)
    static let headline = Font.system(size: 20, weight: .semibold)
    static let body = Font.system(size: 16, weight: .regular)
    static let bodyStrong = Font.system(size: 16, weight: .semibold)
    static let caption = Font.system(size: 13, weight: .regular)
}

enum DSSpacing {
    static let xs: CGFloat = 4
    static let sm: CGFloat = 8
    static let md: CGFloat = 12
    static let lg: CGFloat = 16
    static let xl: CGFloat = 24
    static let xxl: CGFloat = 32
}

enum DSRadius {
    static let sm: CGFloat = 10
    static let md: CGFloat = 14
    static let lg: CGFloat = 20
    static let pill: CGFloat = 999
}

private extension UIColor {
    convenience init(hex: String) {
        let cleaned = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: cleaned).scanHexInt64(&int)

        let a, r, g, b: UInt64
        switch cleaned.count {
        case 8:
            (r, g, b, a) = ((int >> 24) & 0xFF, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (r, g, b, a) = ((int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF, 255)
        }

        self.init(
            red: CGFloat(r) / 255,
            green: CGFloat(g) / 255,
            blue: CGFloat(b) / 255,
            alpha: CGFloat(a) / 255
        )
    }
}
