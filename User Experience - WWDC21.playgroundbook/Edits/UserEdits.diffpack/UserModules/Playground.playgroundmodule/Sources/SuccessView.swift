import SwiftUI

/// View shown when the user successfully created an account in the simulated app
struct SuccessView: View {
    @Environment(\.presentationMode) var presentationMode
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    @ObservedObject private var progress: UserProgress
    
    var body: some View {
        
        VStack(alignment: .leading){
            Spacer()
                
            // Title 
            Text("Well done! ✨")
                .font(.system(size: 33, weight: .bold, design: .rounded))
            
            // Message content 
            if !(progress.chapter == Pages.bank.count-1){
                // not last page
                Text("You have successfully created your profile in the demo app.\n\nContinue on the 'Next page'\nor tap 'Dismiss' and test how the current app handles wrong input.")
                    .padding(.top, 15)
            } else {
                // last page
                Text("You've completed this Playground and gained an insight into the world of user experience design. I hope it was interesting and you learned something new.")
                    .padding(.top, 15)
            }
            
            Spacer()
            Spacer()
            
            // next page and dismiss button
            buttons
            
        }.padding(80)
    }
    
    
    // MARK: - VIEW VARIABLES
    
    private var buttons : some View {
        VStack(spacing: 15){
            
            if !(progress.chapter == Pages.bank.count-1){
                // it is not the last page, show button to navigate to the next page
                // Next Page button
                HStack{
                    Spacer()
                    Text("  Next page  ")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .padding(11)
                    Spacer()
                }
                .background(Color.blue.cornerRadius(40))
                .onTapGesture {
                    progress.didTapNext()
                    presentationMode.wrappedValue.dismiss()
                }
                
            }
            
            // Dismiss button
            HStack{
                Spacer()
                Text("  Dismiss  ")
                    .font(.system(size: 17, weight: progress.chapter == Pages.bank.count-1 ? .bold : .regular))
                    .foregroundColor(progress.chapter == Pages.bank.count-1 ? .white : .primary)
                    .padding(progress.chapter == Pages.bank.count-1 ? 11 : 0)
                Spacer()
            }
            .background(progress.chapter == Pages.bank.count-1 ? Color.blue.cornerRadius(40) : Color.clear.cornerRadius(40))
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
            
        }
    }
    
}
