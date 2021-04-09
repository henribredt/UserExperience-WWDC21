

import SwiftUI

public struct AppView4: View {
    
    @ObservedObject private var progress: UserProgress
    
    public init(progress: UserProgress) {
        self.progress = progress
    }
    
    // icons to let the user choose from
    static let icons = ["🥰","👋🏻", "🦸🏼‍♂️", "🐳", "👑", "🎾", "👩🏽‍🔬"]
    
    // user input
    @State private var name = ""
    @State private var icon = "👋🏻"
    @State private var mail = ""
    
    // input validation
    @State private var nameOkay = false
    @State private var nameNotOkayHighlight = false
    @State private var mailOkay = false
    @State private var mailNotOkayHighlight = false
    
    @State private var showingSuccessView = false
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text("Create Profile")
                .font(.system(size: 28.0, weight: .black))
                .padding(.bottom)
                .padding(.top)
            
            Spacer()
            
            // Select nick name view
            Nickname(name: $name, nameOkay: $nameOkay, nameNotOkayHighlight: $nameNotOkayHighlight)
                .padding(.bottom)
                .animation(.default)
            
            // Type in mail view 
            Mail(mail: $mail, mailOkay: $mailOkay, mailNotOkayHighlight: $mailNotOkayHighlight)
                .padding(.bottom)
                .animation(.default)
                
            // Select avatar view
            Avatar(icon: $icon)
            
            Spacer()
        }
        .transition(.scale)
        
        Spacer()
        
        Button(action: {
            
            if !mailOkay {
                // inditcate that the mail failed
                mailNotOkayHighlight = true
            }
            if !nameOkay {
                // inditcate that the name failed
                nameNotOkayHighlight = true
            }
            if  mailOkay && nameOkay {
                // show view if success
                showingSuccessView.toggle()
            }
            
        }) {
            ButtonView()
                .frame(height: 44)
        }
        
        .sheet(isPresented: $showingSuccessView) {
            SuccessView()
        }
        
        Spacer()
        
    }
    
}

// select user name view
struct Nickname: View {
    
    @Binding var name: String
    @Binding var nameOkay: Bool
    @Binding var nameNotOkayHighlight: Bool
    
    var body: some View {
        
        Text("YOUR NICKNAME")
            .font(.system(size: 12, weight: .bold))
        
        if nameNotOkayHighlight {
            Text("must have at least three characters")
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.red)
        }
        
        HStack {
            TextField("Nickname", text: $name)
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
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary, lineWidth: 2))
        .padding(.bottom)
        
        
    }
}

// Type in mail view
struct Mail: View {
    
    @Binding var mail: String
    @Binding var mailOkay: Bool
    @Binding var mailNotOkayHighlight: Bool
    
    var body: some View {
        
        Text("YOUR MAIL")
            .font(.system(size: 12, weight: .bold))
        
        if mailNotOkayHighlight {
            Text("must contain @ and be a .io domaine")
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.red)
        }
        
        HStack {
            TextField("Mail", text: $mail)
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
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary, lineWidth: 2))
        
    }
    
}

// Select avatar view
struct Avatar: View {
    
    @Binding var icon: String
    
    var body: some View {
        
        Text("YOUR AVATAR")
            .font(.system(size: 12, weight: .bold))
            .padding(.top)
            .padding(.bottom, 10)
        ScrollView(.horizontal , showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(AppView4.icons, id:\.self){ selectedIcon in
                    VStack(spacing: 5){
                        Text(selectedIcon)
                            .font(.system(size: 33))
                            .opacity(icon == selectedIcon ? 1.0 : 0.7)
                            .padding(.leading, icon == AppView4.icons[0] ? 3 : icon == selectedIcon ? 12 : 3)
                            //.padding(.leading, icon == selectedIcon ? 12 : icon == icons[0] ? 0 : 3)
                            .padding(.trailing, icon == selectedIcon ? 12 : 3)
                            .onTapGesture {
                                icon = selectedIcon
                            }
                            .animation(.default)
                        RoundedRectangle(cornerRadius: 3)
                            .frame(width: 12.0, height: 3.0)
                            .opacity(icon == selectedIcon ? 0.5 : 0.0)
                            .animation(.default)
                    }
                }
            }
        }
    }
}

// Create button in AppView 4
struct ButtonView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
            HStack{
                Spacer()
                Text("CREATE")
                    .font(.system(size: 16.0, weight: .black))
                    .foregroundColor(Color.white)
                    .padding(10)
                Spacer()
            }
        }
        .shadow(color: .blue, radius: 1, x: 0, y: 1)
    }
}

// View success
struct SuccessView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .leading){
            Spacer()
            Text("Well done! ✨")
            .font(.system(size: 33, weight: .black))
            Text("You have successfully create your profile in the demo app")
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
