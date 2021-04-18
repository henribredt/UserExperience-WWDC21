import SwiftUI

/// Draws a phone frame and sets its content according to the user progress
public struct AppLiveView: View {
    
    // track user progress
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    public var body: some View {
        ZStack{
            // phone frame
            // image sourece: https://developer.apple.com/app-store/marketing/guidelines/#section-products
            Image(uiImage: #imageLiteral(resourceName: "iphone.png"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                // scale down when user focus should be on text
                .scaleEffect(progress.inChapterProgress == .inital ? 0.9 : 1.0)
                .animation(.default)
                .overlay(
                    // phone screen content
                    ZStack{
                        // debug
                        // Color.red
                        VStack{
                            // show booting view when in inital state
                            if progress.inChapterProgress == .inital {
                                Text("")
                                    .font(.system(size: 80))
                                    .transition(.scale)
                            } else { 
                                // show app view when in applyChanges state, depending on current chapter
                                if progress.chapter == 0 {
                                    AppView1(progress: progress)
                                } else if progress.chapter == 1 {
                                    AppView2(progress: progress)
                                } else if progress.chapter == 2 {
                                    AppView3(progress: progress)
                                } else {
                                    AppView4(progress: progress)
                                }
                            }
                        }
                    }
                    .padding(47)
                    .padding(.top, 27)
                    .padding(.bottom, 27)
                )
        }
    }
    
}
