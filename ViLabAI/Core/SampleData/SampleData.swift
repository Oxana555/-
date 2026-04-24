import Foundation

enum SampleData {
    static let plans: [PricingPlan] = [
        PricingPlan(name: "Starter", price: "$19/mo", description: "Best for personal use.", features: ["200 credits", "Priority queue", "Email support"]),
        PricingPlan(name: "Pro", price: "$59/mo", description: "Built for creators and teams.", features: ["2,000 credits", "Fast rendering", "Advanced exports"])
    ]

    static let results: [ResultItem] = [
        ResultItem(title: "Campaign Portrait A", summary: "Balanced light composition with premium skin texture output.", status: .complete),
        ResultItem(title: "Runway Edit B", summary: "Queued for detail enhancement and contrast normalization.", status: .processing)
    ]
}
