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
            Text("Well done! ✨")
                .font(.system(size: 33, weight: .black))
            if !(progress.chapter == Pages.bank.count-1){
                // not last page
                Text("You have successfully created your profile in the demo app.\nContinue on the next page.")
                    .padding(.top, 11)
            } else {
                // last page
                Text("You've completed this Playground and gained an insight into the world of user experience design. I hope it was interesting and you learned something new.")
                    .padding(.top, 11)
            }
            
            
            Spacer()
            Spacer()
            
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
                        .font(.system(size: 17, weight: .regular))
                        .foregroundColor(.white)
                        .padding(progress.chapter == Pages.bank.count-1 ? 11 : 0)
                    Spacer()
                }
                .background(progress.chapter == Pages.bank.count-1 ? Color.blue.cornerRadius(40) : Color.clear.cornerRadius(40))
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
                
            }
            
        }.padding(80)
    }
}
