
import SwiftUI
import PlaygroundSupport

public struct InfoSideView: View {
    
    public init() {}
    
    @State private var currentChapter = 0
    
    public var body: some View {
        
        VStack(alignment: .leading, spacing: 5){
            // Headline
            Text(Chapters.bank[currentChapter].headline)
                .font(.system(.largeTitle, design: .rounded))
                .bold()
            
            // Subheadline
            //.padding(.bottom, 15)
            //Text(Chapters.bank[currentChapter].subHeadline)
            //.font(.system(.title2, design: .rounded))
            //.padding(.bottom, 5)
            Divider()
                .padding(.bottom)
            
            ScrollView(){
                VStack(alignment: .leading){
                    //Problem description
                    Text(Chapters.bank[currentChapter].problemDescription)
                    .padding(.bottom, 40)
                    
                    // Content Sub title
                    Text(Chapters.bank[currentChapter].contentSubTitle)
                        .font(.system(.title2, design: .rounded))
                        .bold()
                        .padding(.bottom, 15)
                    
                    // Improvement description
                    Text(Chapters.bank[currentChapter].improvmentDescription)
                    
                }
                
            }
            
            Spacer()
            Divider()
                .padding(.bottom, 10)
            HStack(alignment: .top){
                Text("Chapter \(currentChapter+1) of \(Chapters.bank.count)")
                        .foregroundColor(.secondary)
                        .font(.caption)
                
                Spacer()
                Button(action: {
                    if !(currentChapter == Chapters.bank.count-1) {
                        currentChapter += 1
                    } else {
                        // stop playground
                        PlaygroundPage.current.finishExecution()
                    }
                    
                }) {
                    Text(currentChapter == 0 ? " Get stared " : currentChapter == Chapters.bank.count-1 ? "  Stop Playground  ": " Apply changes ")
                        .fontWeight(.bold)
                        .padding(10)
                        .background(!(currentChapter == Chapters.bank.count-1) ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .disabled(currentChapter == Chapters.bank.count-1 ? true : false)
                }
            }
            
            
        }
    }
}

