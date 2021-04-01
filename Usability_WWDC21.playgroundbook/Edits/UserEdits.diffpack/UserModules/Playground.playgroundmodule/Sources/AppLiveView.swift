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
                            if progress.chapter == 0 {
                                AppView1(progress: progress)
                            } else if progress.chapter == 1 {
                                AppView2(progress: progress)
                            }  else {
                                Text("An internal error occured, please rerun the plaground.")
                            } 
                        }
                    }
                        .padding(43)
                        // simulate safe area
                        .padding(.top, 26)
                        .padding(.bottom, 26)
                )
        }
    }
    
}
