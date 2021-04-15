
import SwiftUI

public struct ContentView: View {
    
    public init() {}
    
    // track user progress to update chapters and simulated app
    @StateObject var progress = UserProgress()
    
    public var body: some View {
        HStack{
            AppLiveView(progress: progress) 
                .padding(.leading, 75)
                .padding(.trailing, 50)
                .padding(.top, 20)
            
            InfoSideView(progress: progress) 
                .padding(.leading, 15)
                .padding(.trailing, 25)
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
}

