
import SwiftUI
import PlaygroundSupport

/// This view shows the explanation text on the right side based on the user progress and navigaion options
public struct InfoSideView: View {
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    // user progress in playground
    @ObservedObject private var progress: UserProgress
    
    public var body: some View {
        
        VStack(alignment: .leading, spacing: 5){
            // Headline
            Text(Pages.bank[progress.chapter].headline)
                .font(.system(size: 40, design: .rounded))
                .bold()
                .padding(.bottom, 5)
            Divider()
                .padding(.bottom, 35)
            
            // Content  
            ScrollView(){
                VStack(alignment: .leading){
                    
                    // first Subheadline
                    Text(Pages.bank[progress.chapter].subHeadline)
                        .bold()
                        .font(.system(.title3, design: .rounded))
                        .padding(.bottom, 5)
                    
                    //Problem description
                    Text(Pages.bank[progress.chapter].problemDescription)
                        .opacity(0.75)
                        .padding(.bottom, 55)
                    
                    // second Subheadline = contentSubTitle
                    Text(Pages.bank[progress.chapter].contentSubTitle)
                        .font(.system(.title3, design: .rounded))
                        .bold()
                        .padding(.bottom, 5)
                    
                    // Improvement description
                    Text(Pages.bank[progress.chapter].improvmentDescription)
                        .opacity(0.75)
                    
                }
                
            }
            
            Spacer()
            Divider()
                .padding(.bottom, 10)
            
            // footer, navigation
            HStack(alignment: .top){
                Text("Page \(progress.chapter + 1) of \(Pages.bank.count)")
                        .foregroundColor(.secondary)
                        .font(.caption)
                
                Spacer()
                
                Button(action: {
                    if !(progress.chapter == Pages.bank.count-1 && progress.inChapterProgress == .applyChanges) {
                        // not on last page
                        progress.didTapNext()
                    } else {
                        // stop playground if on last page
                        PlaygroundPage.current.finishExecution()
                    }
                    
                }) {
                    // Button title, depends on the UserState
                    Text(progress.inChapterProgress == .inital ? progress.chapter == 0 ? "  Run app  " : progress.chapter == Pages.bank.count-1 ? " Run final app " : " Apply changes " : progress.chapter == Pages.bank.count-1 ? " Stop Playground " : " Next page ")
                        .fontWeight(.bold)
                        .padding(10)
                        // blue default bg color, greay for last chapter
                        .background(!(progress.chapter == Pages.bank.count-1 && progress.inChapterProgress == .applyChanges) ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                }
                .animation(.default)
            }
            
        }
    }
}

