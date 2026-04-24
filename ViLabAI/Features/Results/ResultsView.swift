import SwiftUI

struct ResultsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.lg) {
                DSNavigationBar(title: "Results", subtitle: "Latest output")
                ForEach(SampleData.results, id: \.title) { item in
                    ResultCard(item: item)
                }
            }
            .padding(.horizontal, DSSpacing.lg)
            .padding(.bottom, DSSpacing.xl)
        }
    }
}
