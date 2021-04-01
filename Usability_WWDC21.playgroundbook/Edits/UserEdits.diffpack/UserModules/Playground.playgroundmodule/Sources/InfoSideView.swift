
import SwiftUI
import PlaygroundSupport

public struct InfoSideView: View {
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    @ObservedObject private var progress: UserProgress
    
    public var body: some View {
        
        VStack(alignment: .leading, spacing: 5){
            // Headline
            Text(Chapters.bank[progress.chapter].headline)
                .font(.system(size: 40, design: .rounded))
                .bold()
                .padding(.bottom, 5)
            Divider()
                .padding(.bottom, 35)
            
            ScrollView(){
                VStack(alignment: .leading){
                    
                    // Subheadline
                    Text(Chapters.bank[progress.chapter].subHeadline)
                        .bold()
                        .font(.system(.title3, design: .rounded))
                        .foregroundColor(.primary)
                        .padding(.bottom, 5)
                    
                    //Problem description
                    Text(Chapters.bank[progress.chapter].problemDescription)
                        .foregroundColor(.secondary)
                    .padding(.bottom, 55)
                    
                    // Content Sub title
                    Text(Chapters.bank[progress.chapter].contentSubTitle)
                        .font(.system(.title3, design: .rounded))
                        .bold()
                        .padding(.bottom, 5)
                    
                    // Improvement description
                    Text(Chapters.bank[progress.chapter].improvmentDescription)
                        .foregroundColor(.secondary)
                    
                    
                    
                }
                
            }
            
            Spacer()
            Divider()
                .padding(.bottom, 10)
            HStack(alignment: .top){
                Text("Page \(progress.chapter + 1) of \(Chapters.bank.count)")
                        .foregroundColor(.secondary)
                        .font(.caption)
                
                Spacer()
                
                Button(action: {
                    if !(progress.chapter == Chapters.bank.count-1) {
                        progress.chapter += 1
                    } else {
                        // stop playground
                        PlaygroundPage.current.finishExecution()
                    }
                    
                }) {
                    Text(progress.chapter == 0 ? " Get stared " : progress.chapter == Chapters.bank.count-1 ? "  Stop Playground  ": " Next page ")
                        .fontWeight(.bold)
                        .padding(10)
                        .background(!(progress.chapter == Chapters.bank.count-1) ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                    
                }
            }
            
            
        }
    }
}

