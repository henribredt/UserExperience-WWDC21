import SwiftUI

struct SuccessView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .leading){
            Spacer()
            Text("Well done! ✨")
                .font(.system(size: 33, weight: .black))
            Text("You have successfully created your profile in the demo app.\nContinue on the next page.")
                .padding(.top, 10)
            
            Spacer()
            
            HStack{
                Spacer()
                Text("Dismiss")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.white)
                    .padding(11)
                Spacer()
            }
            .background(Color.blue.cornerRadius(10))
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
            
        }.padding(80)
    }
}
