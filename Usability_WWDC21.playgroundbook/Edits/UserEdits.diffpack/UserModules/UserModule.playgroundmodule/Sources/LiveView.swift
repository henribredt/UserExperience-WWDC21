import SwiftUI

public struct LiveView: View {
    
    public init() {}
    
    public var body: some View {
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "iPhone.png"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    AppSimulationView()
                        .padding(45)
                        // safe area
                        .padding(.top, 26)
                        .padding(.bottom, 26)
                )
        }
    }
    
}
