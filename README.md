# ViLab AI iOS App (SwiftUI)

Production-ready SwiftUI iOS app scaffold implementing the Chanel design system tokens with updated **ViLab AI** branding.

## Project Structure

- `ViLabAI.xcodeproj` — Xcode project
- `ViLabAI/` — SwiftUI app source
- `ViLabAI/Assets.xcassets` — app assets and accent color
- `DESIGN_SYSTEM_CHANEL.md` — design system source of truth
- `tokens/chanel-design-tokens.json` — token source of truth

## Open in Xcode

1. Open **Xcode.app** (Xcode 15+ recommended).
2. Choose **File → Open...**.
3. Select `ViLabAI.xcodeproj` from this repository.
4. Wait for indexing/build settings to finish.

## Run in iPhone Simulator

1. In the Xcode toolbar, select target **ViLabAI**.
2. Choose a simulator device (e.g., **iPhone 15 Pro**).
3. Press **⌘R** (Run).
4. The app launches to **Onboarding**, then enters the multi-tab experience:
   - Home Dashboard
   - Upload
   - Results
   - Pricing
   - Profile
   - Settings

## Notes

- The app supports light and dark mode using dynamic color tokens.
- Reusable component library is in `ViLabAI/Core/Components`.
- Sample app data is in `ViLabAI/Core/SampleData/SampleData.swift`.
