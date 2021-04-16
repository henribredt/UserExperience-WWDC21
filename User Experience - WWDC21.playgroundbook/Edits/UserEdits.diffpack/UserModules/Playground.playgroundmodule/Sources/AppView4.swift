import SwiftUI

/// Fourth simulated app, designed to add details that enhance the user experience including animations
public struct AppView4: View {
    
    // user progress in playground
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    // user input
    @State private var name = ""
    @State private var icon = "👋🏻"
    @State private var mail = ""
    
    // input validation
    @State private var nameOkay = false
    @State private var nameNotOkayHighlight = false
    @State private var mailOkay = false
    @State private var mailNotOkayHighlight = false
    
    // used for textfield shake animation on incorrect input
    @State var nameIncorrectAttempts: Int = 0
    @State var mailIncorrectAttempts: Int = 0
    
    // show info view, when the user successfully "created" an account
    @State private var showingSuccessView = false
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text("Create Profile")
                .font(.system(size: 28.0, weight: .black))
                .padding(.bottom)
                .padding(.top)
            
            Spacer()
            
            // Select nick name view
            NicknameCheckAnimate(name: $name, nameOkay: $nameOkay, nameNotOkayHighlight: $nameNotOkayHighlight, nameIncorrectAttempts: $nameIncorrectAttempts)
                .padding(.bottom)
            //.animation(.default)
            
            // Type in mail view 
            MailCheckAnimate(mail: $mail, mailOkay: $mailOkay, mailNotOkayHighlight: $mailNotOkayHighlight, mailIncorrectAttempts: $mailIncorrectAttempts)
                .padding(.bottom)
            //.animation(.default)
                
            // Select avatar view
            AvatarCheckAnimate(icon: $icon)
            
            Spacer()
        }
        .transition(.scale)
        
        Spacer()
        
        Button(action: {
            
            if  mailOkay && nameOkay {
                // show view if success
                showingSuccessView.toggle()
            } else {
                // invalid input
                if !mailOkay {
                    // inditcate that the mail failed
                    withAnimation(.default) {
                        self.mailIncorrectAttempts += 1
                    }
                    mailNotOkayHighlight = true
                }
                if !nameOkay {
                    // inditcate that the name failed
                    withAnimation(.default) {
                        
                        self.nameIncorrectAttempts += 1
                    }
                    nameNotOkayHighlight = true
                }
            }
            
        }) {
            ButtonView()
                .frame(height: 44)
        }
        
        // show success view
        .sheet(isPresented: $showingSuccessView) {
            SuccessView(progress: progress)
        }
        
        Spacer()
        
    }
    
}

// Component views

// select user name view
struct NicknameCheckAnimate: View {
    
    @Binding var name: String
    @Binding var nameOkay: Bool
    @Binding var nameNotOkayHighlight: Bool
    @Binding var nameIncorrectAttempts: Int
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("NICKNAME")
                .font(.system(size: 12, weight: .bold))
            
            // show helpful error message
            if nameNotOkayHighlight {
                Text("must have at least three characters")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.red)
            }
            
            
            HStack {
                TextField("Tap here", text: $name)
                    .onChange(of: name, perform: { value in
                        nameOkay = InputValidator.namePassedCheck(name: name)
                        nameNotOkayHighlight = false
                    })
                Image(systemName: nameOkay ? "checkmark.square.fill" : "exclamationmark.square.fill")
                    .foregroundColor(nameNotOkayHighlight ? Color.red : nameOkay ? Color.green : Color.secondary)
                    .onTapGesture {
                        if !nameOkay{
                            nameNotOkayHighlight = true
                        }
                    }
            }
            .padding(11)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary, lineWidth: 1.5))
            // Shake on wrong input
            .modifier(ShakeEffect(animatableData: CGFloat(nameIncorrectAttempts)))
        }
        .padding(.bottom)
        
    }
}

// Type in mail view
struct MailCheckAnimate: View {
    
    @Binding var mail: String
    @Binding var mailOkay: Bool
    @Binding var mailNotOkayHighlight: Bool
    @Binding var mailIncorrectAttempts: Int
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("MAIL ADDRESS")
                .font(.system(size: 12, weight: .bold))
            
            // show helpful error messagae
            if mailNotOkayHighlight {
                Text("must contain @ and be a .io domain")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.red)
            }
            
            HStack {
                TextField("Tap here", text: $mail)
                    .onChange(of: mail, perform: { value in
                        mailOkay = InputValidator.mailPassedCheck(mail: mail)
                        mailNotOkayHighlight = false
                    })
                Image(systemName: mailOkay ? "checkmark.square.fill" : "exclamationmark.square.fill")
                    .foregroundColor(mailNotOkayHighlight ? Color.red : mailOkay ? Color.green : Color.secondary)
                    .onTapGesture {
                        if !mailOkay{
                            mailNotOkayHighlight = true
                        }
                    }
            }
            .padding(11)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary, lineWidth: 1.5))
            // Shake on wrong input
            .modifier(ShakeEffect(animatableData: CGFloat(mailIncorrectAttempts)))
        }
    }
    
}

// Select avatar view
struct AvatarCheckAnimate: View {
    
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
                            .font(.system(size: 33.0))
                            .opacity(icon == selectedIcon ? 1.0 : 0.7)
                            .padding(.leading, icon == Avatars.icons[0] ? 3 : icon == selectedIcon ? 12 : 3)
                            .padding(.trailing, icon == selectedIcon ? 12 : 3)
                            .onTapGesture {
                                icon = selectedIcon
                                
                            }
                            .animation(.default)
                        RoundedRectangle(cornerRadius: 3)
                            .frame(width: 12.0, height: 3.0)
                            .opacity(icon == selectedIcon ? 0.5 : 0.0)
                            .padding(.trailing, icon == Avatars.icons[0] ? 12 : 0)
                            .animation(.default)
                            
                    }
                }
            }
        }
    }
}

// Shake effect for wrong input
struct ShakeEffect: GeometryEffect {
    var animatableData: CGFloat
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX:
                                                10 * sin(animatableData * .pi * CGFloat(3)),
                                              y: 0)
        )
    }
}
