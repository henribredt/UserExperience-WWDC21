import SwiftUI

public struct AppView2: View {
    
    public init() {}
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Sign Up Screen")
                .foregroundColor(.primary)
                .font(.system(size: 33.0, weight: .black, design: .serif))
                .padding(33)
                .transition(.slide)
        }
    }
    
}
