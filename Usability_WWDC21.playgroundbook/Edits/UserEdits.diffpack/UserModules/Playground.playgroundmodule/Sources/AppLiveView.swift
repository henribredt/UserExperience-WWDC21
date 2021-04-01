import SwiftUI

public struct AppLiveView: View {
    
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    public var body: some View {
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "iPhone.png"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    ZStack{
                        // debug
                        // Color.red
                        VStack{
                            
                            if progress.chapter == 0 {
                                AppView1()
                            } else if progress.chapter == 1 {
                                AppView1()
                            }  else {
                                AppView2()
                            } 
                        }
                        
                    }
                        .padding(43)
                        // safe area
                        .padding(.top, 26)
                        .padding(.bottom, 26)
                )
        }
    }
    
}
