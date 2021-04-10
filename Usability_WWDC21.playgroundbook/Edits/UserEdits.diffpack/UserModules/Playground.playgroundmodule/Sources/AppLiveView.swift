import SwiftUI

public struct AppLiveView: View {
    
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    public var body: some View {
        ZStack{
            // find image source, make sure its public domaine!!!
            Image(uiImage: #imageLiteral(resourceName: "iPhone.png"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                // scale down of user focus should be on text
                .scaleEffect(progress.inChapterProgress == .inital ? 0.9 : 1.0)
            .animation(.default)
                .overlay(
                    ZStack{
                        // debug
                        //Color.red
                        VStack{
                            // show booting when in inital state
                            if progress.inChapterProgress == .inital {
                                Text("")
                                    .font(.system(size: 80))
                                    .transition(.scale)
                            } else { 
                                // show app when in applyChanges state
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
                        .padding(.top, 26)
                        .padding(.bottom, 26)
                )
        }
    }
    
}
