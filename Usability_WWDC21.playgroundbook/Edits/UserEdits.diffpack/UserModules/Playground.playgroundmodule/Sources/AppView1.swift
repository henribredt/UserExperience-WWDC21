

import SwiftUI

public struct AppView1: View {
    
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    @State private var name = "Your Name here"
    @State private var mail = "Your Mail adress here"
    
    @State private var avatar = "👨🏼‍💻"
    
    @State private var statusMessage = ""
    @State private var statusMessageColor = Color.secondary
    
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            Text("Create Profile")
                .foregroundColor(.primary).font(.system(size: 23.0, weight: .thin, design: .rounded))
                .padding(.top)
                
            Text("Choose a nick name, type in your mail and select an avatar")
                .foregroundColor(.primary)
                .font(.system(size: 23.0, weight: .regular, design: .serif))
                
            Text(statusMessage)
                .foregroundColor(statusMessageColor)
            
            Spacer()
            Group{
                TextField("Type here", text: $name)
                TextField("Type here", text: $mail)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
                
            HStack{
                Button(action: {
                    //if InputValidator.validate(name: name, mail: mail, password: password) {
                    //statusMessage = "Success!"
                    //statusMessageColor = Color.red
                            //} else {
                    //name = ""
                    //mail = ""
                    //password = ""
                    //statusMessage = "Some of your input is incorrect, try again"
                    //statusMessageColor = Color.green
                            //}
                }) {
                    Text(" OK ")
                        .font(.system(size: 14.0, weight: .thin, design: .serif))
                        .foregroundColor(Color.primary)
                    
                }
                    
                    
                Spacer()
                Button(action: {
                    name = ""
                    mail = ""
                    
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
    }
    
}
}
