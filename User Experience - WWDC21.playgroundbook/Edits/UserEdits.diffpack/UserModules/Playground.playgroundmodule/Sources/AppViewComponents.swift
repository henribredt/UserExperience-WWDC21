import SwiftUI
// this file includes app view components commonly used in the AppViews 

/// provides avatar icons to let the user choose from
struct Avatars {
    static let icons = ["π₯°","ππ»", "π¦ΈπΌββοΈ", "π³", "π³οΈβπ", "π£", "π", "πΎ", "π©π½βπ¬", "π", "π¨πΌβπ»"]
}

// Create button layout view, no functionality
struct ButtonView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
            HStack{
                Spacer()
                Text("Create")
                    .font(.system(size: 16.0, weight: .bold))
                    .foregroundColor(Color.white)
                    .padding(10)
                Spacer()
            }
        }
    }
}
