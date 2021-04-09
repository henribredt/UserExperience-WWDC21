
import SwiftUI

public struct AppView3: View {
    
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Screen 3")
                .foregroundColor(.green)
                .font(.system(size: 33.0, weight: .black, design: .rounded))
                .padding(33)
                .transition(.scale)
        }
    }
    
}
