import SwiftUI

/// First simulated app, designed to feature a bad usability
public struct AppView1: View {
    
    // user progress in playground
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    // User input
    @State private var name = "Your Name here"
    @State private var mail = "Your Mail adress here"
    @State private var avatar = "👨🏼‍💻"
    
    // Message content to inform user about bad input
    @State private var statusMessage = ""
    
    // show info view, when the user successfully "created" an account
    @State private var showingSuccessView = false
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            Text("Create Profile")
                .foregroundColor(.primary).font(.system(size: 23.0, weight: .thin, design: .default))
                .padding(.top)
                
            Text("Choose a nick name, type in your mail and select an avatar")
                .foregroundColor(.primary)
                .font(.system(size: 23.0, weight: .regular, design: .default))
                
            Text(statusMessage)
                .foregroundColor(.green)
            
            Spacer()
            
            // Textfields
            Group{
                TextField("Type here", text: $name)
                TextField("Type here", text: $mail)
                TextField("Select Emoji from Keyboard", text: $avatar)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            // The two bottom buttons
            HStack{
                
                // OK button
                Button(action: {
                    // Check input
                    if InputValidator.namePassedCheck(name: name) && InputValidator.mailPassedCheck(mail: mail) && InputValidator.avatarPassedCheck(avatar: avatar){
                        // user successfully "created an account", show info screen
                        showingSuccessView = true
                    } else {
                        // intentinally bad handling in this app version, will be improved :)
                        name = ""
                        mail = ""
                        avatar = ""
                        statusMessage = "Some of your input is incorrect, try again. Your mail must contain @ and be a .io domaine, avatar can only be a singe emoji, name must have at least three characters"
                    }
                }) {
                    Text(" OK ")
                        .font(.system(size: 14.0, weight: .light, design: .default))
                        .foregroundColor(Color.red)
                }
                
                Spacer()
                
                // Clear button
                Button(action: {
                    name = ""
                    mail = ""
                    avatar = ""
                    
                }) {
                    Text("  Clear  ▶︎  ")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .padding(7)
                        .background(Color.green)
                        .foregroundColor(.white)
                }
            }
        }
        
        // show success view
        .sheet(isPresented: $showingSuccessView) {
            SuccessView(progress: progress)
        }
    }
}
