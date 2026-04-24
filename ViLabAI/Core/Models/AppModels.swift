import SwiftUI

enum AppTab: CaseIterable {
    case home, upload, results, pricing, profile, settings

    var title: String {
        switch self {
        case .home: return "Home"
        case .upload: return "Upload"
        case .results: return "Results"
        case .pricing: return "Pricing"
        case .profile: return "Profile"
        case .settings: return "Settings"
        }
    }

    var icon: String {
        switch self {
        case .home: return "house.fill"
        case .upload: return "square.and.arrow.up.fill"
        case .results: return "chart.bar.xaxis"
        case .pricing: return "creditcard.fill"
        case .profile: return "person.crop.circle.fill"
        case .settings: return "gearshape.fill"
        }
    }
}

struct PricingPlan {
    let name: String
    let price: String
    let description: String
    let features: [String]
}

struct ResultItem {
    enum Status: String {
        case complete = "Complete"
        case processing = "Processing"

        var color: Color {
            switch self {
            case .complete: return DSColor.success
            case .processing: return DSColor.warning
            }
        }
    }

    let title: String
    let summary: String
    let status: Status
}
