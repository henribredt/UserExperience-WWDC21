import SwiftUI

public struct AppView2: View {
    
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    // user input
    @State private var name = ""
    @State private var icon = "👋🏻"
    @State private var mail = ""
    
    // show info view, when the user successfully "created" an account
    @State private var showingSuccessView = false
    
    // Message content to inform user about bad input
    @State private var statusMessage = ""
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text("Create Profile")
                .font(.system(size: 28.0, weight: .black))
                .padding(.bottom)
                .padding(.top)
            Text(statusMessage)
                .foregroundColor(.primary)
            
            Spacer()
            
            NicknamePlain(name: $name)
            MailPlain(mail: $mail)
            AvatarPlain(icon: $icon)
            
            Spacer()
            
            Button(action: {
                
                if  InputValidator.namePassedCheck(name: name) && InputValidator.mailPassedCheck(mail: mail) {
                    // show view if success
                    showingSuccessView.toggle()
                } else {
                    statusMessage = "Your mail must contain @ and be a .io domaine, the name must have at least three characters"
                }
                
            }) {
                ButtonView()
                    .frame(height: 44)
            }
            
            .sheet(isPresented: $showingSuccessView) {
                SuccessView()
            }
            
        }
    }
    
}


// Component views

// select user name view
struct NicknamePlain: View {
    
    @Binding var name: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("YOUR NICKNAME")
                .font(.system(size: 12, weight: .bold))
            
            TextField("Nickname", text: $name)
                .padding(11)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary, lineWidth: 2))
        }
        .padding(.bottom)
        .padding(.bottom)
        
    }
}

// Type in mail view
struct MailPlain: View {
    
    @Binding var mail: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("YOUR MAIL")
                .font(.system(size: 12, weight: .bold))
            
            TextField("Mail", text: $mail)
                .padding(11)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary, lineWidth: 2))
        }
        .padding(.bottom)
    }
    
}

// Select avatar view
struct AvatarPlain: View {
    
    @Binding var icon: String
    
    var body: some View {
        
        Text("YOUR AVATAR")
            .font(.system(size: 12, weight: .bold))
            .padding(.top)
            .padding(.bottom, 10)
        ScrollView(.horizontal , showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(Avatars.icons, id:\.self){ selectedIcon in
                    VStack(spacing: 5){
                        Text(selectedIcon)
                            .font(.system(size: 33))
                            .padding(.trailing, 12)
                            .onTapGesture {
                                icon = selectedIcon
                            }
                        RoundedRectangle(cornerRadius: 3)
                            .frame(width: 12.0, height: 3.0)
                            .opacity(icon == selectedIcon ? 0.5 : 0.0)
                            .padding(.trailing, 12)
                    }
                }
            }
        }
    }
}

