
public struct Chapter {
    public init(headline: String, subHeadline: String, problemDescription: String, contentSubTitle: String, improvmentDescription: String) {
        self.headline = headline
        self.subHeadline = subHeadline
        self.problemDescription = problemDescription
        self.contentSubTitle = contentSubTitle
        self.improvmentDescription = improvmentDescription
    }
    
    let headline: String
    let subHeadline: String
    let problemDescription: String
    let contentSubTitle: String
    let improvmentDescription: String
    
}

public struct Chapters {
    public init() {}
    
    public static let bank = [
        Chapter(
            headline: "Welcome  👋🏻", 
            subHeadline: "This playground focuses on three key aspects I want to share on creating good user experiences (UX)", 
            problemDescription: "We are dealing with a simple 'Create Profile' screen as an exmaple and discover what makes a good UX. The preview on the left is going to be fully interactive. \n\nTap the 'Run app' button and try to create your profile there - you will notice many usability issues, especially in the case of unexpected input. We will improve the UX step by step with some explanation and some key lessons to take away.",
            contentSubTitle: "Notice", 
            improvmentDescription: "This experience looks best in darkmode.\nTurn off 'Show results' for this playground.\nTo enter text in the app simulation, please use the small, floating keyboard of iPadOS or an external keyboard.\n\n\n\t👆🏻 Tap the bottom right blue button"),
        Chapter(
            headline: "Design clear and discoverable 🔅",
            subHeadline: "Create hierarchy and eliminate non essentials",
            problemDescription: "Always provide the minimum amout of options and interface elements that allow the desired functionality. Create tidy interfaces with a clear structure. Offer obvious signifiers pointing to the current options the user has (affordances) and highlight the primary action to guide the user.",
            contentSubTitle: "Ideas how that can be done",
            improvmentDescription: "As you probably have noticed, the example app currently is cluttered, higlights a secondary action and the general experience while using it is terrible.\n\n▶︎ Eliminating the non essential interface elements\n▶︎ Using percise typography and a clear design language to create hierarchy\n▶︎ Making the buttons discoverable and meaningful"),
        Chapter(
            headline: "Provide rich feedback  👍🏻",
            subHeadline: "Make the state obvious - especially in the case of errors",
            problemDescription: "The design must always provide enough information about the current state of the app. Make it as easy as possible for the user to understand whats happening so that he has the feeling of control. Indicate instantly erroneous input and provide help on how to fix possible issues.",
            contentSubTitle: "Ideas how can that be done",
            improvmentDescription: "As of right now, the example app will only tell the user if the input is corret when he tapps the button and provides no help. He can't know which input was incorrect and why it was erroneous.\n\n▶︎ Performing the input validation in realtime and indicating the result instantly\n▶︎ Providing helpful error messages and tips\n▶︎ Usage of colors to indicate errors (red) and correct input (green)"),
        Chapter(
            headline: "Make it exciting  🤩",
            subHeadline: "Add the little extra, the unexpected",
            problemDescription:"Creating an experience worth remerbering takes more then doing nothing wrong. Make it interesting, spend time on details, try to take the interaction to the next level - simply make it surprisingly good. Pay attention to make it suddle and not to disturb the general user flow.",
            contentSubTitle: "Ideas how that can be done",
            improvmentDescription: "We have optimized the screen a lot to create a decent user experience. Now its time for some final polishes.\n\n▶︎ Use the user name to make the interaction more personal\n▶︎ Add some nice, suddle animations to soothen the experience\n▶︎ Focis on Microinteraction"),
        Chapter(headline: "Congratulations  🚀",
                subHeadline: "You have experienced how bad usability feels, determined the problems and learnd how to fix them",
                problemDescription: "The three usability \"rules\" can be applied when designing a new experience, such as an app. Always remeber, there are no dumb useres - there is only bad design. If you like, you can play around with the app fuhter and think about other bits that can be improved.\n\nI whish you a great WWDC21, see you there!",
                contentSubTitle: "Recommended reads",
                improvmentDescription: "▶︎ The Design of Everyday Things (Don Norman)\n▶︎ Universal Principles of Design (William Lidwell, Kritina Holden, Jill Butler)\n▶︎ www.developer.apple.com/design/human-interface-guidelines\n▶︎ Don't Make Me Think (Steve Krug)\n▶︎ Hooked (Nir Eyal)"),
    ]
}

