
import SwiftUI
import PlaygroundSupport

public struct InfoSideView: View {
    
    public init(pCurrentChapter: UserProgress) {
        self.currentChapter = pCurrentChapter
    }
    
    @ObservedObject private var currentChapter: UserProgress
    
    public var body: some View {
        
        VStack(alignment: .leading, spacing: 5){
            // Headline
            Text(Chapters.bank[currentChapter.progress].headline)
                .font(.system(size: 45, design: .rounded))
                .bold()
                .padding(.bottom, 5)
            Divider()
                .padding(.bottom, 35)
            
            ScrollView(){
                VStack(alignment: .leading){
                    
                    // Subheadline
                    Text(Chapters.bank[currentChapter.progress].subHeadline)
                        .bold()
                        .font(.system(.title3, design: .rounded))
                        .foregroundColor(.primary)
                        .padding(.bottom, 5)
                    
                    //Problem description
                    Text(Chapters.bank[currentChapter.progress].problemDescription)
                        .foregroundColor(.secondary)
                    .padding(.bottom, 55)
                    
                    // Content Sub title
                    Text(Chapters.bank[currentChapter.progress].contentSubTitle)
                        .font(.system(.title3, design: .rounded))
                        .bold()
                        .padding(.bottom, 5)
                    
                    // Improvement description
                    Text(Chapters.bank[currentChapter.progress].improvmentDescription)
                        .foregroundColor(.secondary)
                    
                }
                
            }
            
            Spacer()
            Divider()
                .padding(.bottom, 10)
            HStack(alignment: .top){
                Text("Chapter \(currentChapter.progress + 1) of \(Chapters.bank.count)")
                        .foregroundColor(.secondary)
                        .font(.caption)
                
                Spacer()
                Button(action: {
                    if !(currentChapter.progress == Chapters.bank.count-1) {
                        currentChapter.progress += 1
                    } else {
                        // stop playground
                        PlaygroundPage.current.finishExecution()
                    }
                    
                }) {
                    Text(currentChapter.progress == 0 ? " Get stared " : currentChapter.progress == Chapters.bank.count-1 ? "  Stop Playground  ": " Apply changes ")
                        .fontWeight(.bold)
                        .padding(10)
                        .background(!(currentChapter.progress == Chapters.bank.count-1) ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        
                }
            }
            
            
        }
    }
}

