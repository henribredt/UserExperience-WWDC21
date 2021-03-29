import SwiftUI

public struct LiveView: View {
    
    @ObservedObject private var currentChapter: UserProgress
    
    public init(pCurrentChapter: UserProgress) {
        self.currentChapter = pCurrentChapter
    }
    
    public var body: some View {
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "iPhone.png"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    AppSimulationView(pCurrentChapter: currentChapter)
                        .padding(45)
                        // safe area
                        .padding(.top, 26)
                        .padding(.bottom, 26)
                )
        }
    }
    
}
