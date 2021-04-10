import SwiftUI
// this file includes app view components used in the AppViews 2 to 3

// icons to let the user choose from
struct Avatars {
    static let icons = ["🥰","👋🏻", "🦸🏼‍♂️", "🐳", "🏳️‍🌈", "👑", "🎾", "👩🏽‍🔬"]
}

// Create button
struct ButtonView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
            HStack{
                Spacer()
                Text("CREATE")
                    .font(.system(size: 16.0, weight: .black))
                    .foregroundColor(Color.white)
                    .padding(10)
                Spacer()
            }
        }
        .shadow(color: .blue, radius: 1, x: 0, y: 1)
    }
}
