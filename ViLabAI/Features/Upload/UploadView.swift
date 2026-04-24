import SwiftUI

struct UploadView: View {
    @State private var projectName = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.lg) {
                DSNavigationBar(title: "Upload", subtitle: "Start a new generation")
                DSInlineTextField(title: "Project Name", text: $projectName)
                UploadCard()
                PrimaryButton(title: "Upload & Process") {}
            }
            .padding(.horizontal, DSSpacing.lg)
            .padding(.bottom, DSSpacing.xl)
        }
    }
}
