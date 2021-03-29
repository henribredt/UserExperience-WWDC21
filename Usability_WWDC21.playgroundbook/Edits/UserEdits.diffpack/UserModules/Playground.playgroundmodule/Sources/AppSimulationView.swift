
import SwiftUI

public struct AppSimulationView: View {
    
    @ObservedObject private var currentChapter: UserProgress
    @State private var name: String = ""
    
    public init(pCurrentChapter: UserProgress) {
        self.currentChapter = pCurrentChapter
    }
    
    public var body: some View {
        ZStack{
            // debug
            // Color.red
            VStack{
                if currentChapter.progress == 0 {
                    Text("")
                        .font(.system(size: 80))
                } else {
                    Text("Hello \(name), welcome to DubDub 21 !")
                    Spacer()
                    TextField("Your Name", text: $name)
                    Divider()
                        .padding(.bottom)
                    HStack{
                        Spacer()
                        Button(action: {
                            print("pressed")
                        }) {
                            Text(" Submit ")
                                .fontWeight(.bold)
                                .padding(5)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(40)
                        }
                    }
                    Spacer()
                } 
            }
        }
        
        
    }
}
