
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
            headline: "Welcome 👋🏻", 
            subHeadline: "This playground focuses on four key aspects I want to share on creating good user experiences (UX)", 
            problemDescription: "We are dealing with a simple signup screen as an exmaple and discover what makes good UX. The preview on the left is, once it has booted, fully interactive.  If you like, you can try to sing up there now - you will notice many usability issues. We will improve the UX step by step with some explanation and some key lessons to take away.",
            contentSubTitle: "Notice", 
            improvmentDescription: "This experience looks best in darkmode.\nTo enter text in the app simulation, please use the small, floating keyboard of iPadOS or an external keyboard.\n\n\n\t👆🏻 Tap 'Get started' to begin improving the app when you are ready"),
        Chapter(
            headline: "Design clarity 🔅",
            subHeadline: "Create hierarchy and eliminate non essentials",
            problemDescription: "Some interesting text goes here and it surely fulls mutliple lines, as it nicely explains whats good and whats bad.\n\n\t▶︎ This or that\n\t▶︎ Or this or that or it",
            contentSubTitle: "How to fix",
            improvmentDescription: "Some interesting text goes here and if surely fulls mutliple lines, as it nicely explains whats good and whats bad.\n\n\t▶︎ This or that\n\t▶︎ Or this or that or it"),
        Chapter(
            headline: "Make it discoverable 🐣",
            subHeadline: "Offer clear signifiers pointing to the current affordances,\nhighlight the primary action",
            problemDescription: "",
            contentSubTitle: "Ideas how can that be done",
            improvmentDescription: ""),
        Chapter(
            headline: "Provide rich feedback 👍🏻",
            subHeadline: "Make the state obvious - especially in the case of errors",
            problemDescription: "",
            contentSubTitle: "Ideas how can that be done",
            improvmentDescription: ""),
        Chapter(
            headline: "Make it suprizing 🌈",
            subHeadline: "Add the little extra, the unexpected",
            problemDescription:"Creating an experience worth remerbering takes more then doing nothing wrong. Make it interesting, spend time on details, try to take the interaction to the next level - simply make it supersizingly good. Pay attention to make it suddle and not to disturb the general user flow.",
            contentSubTitle: "Ideas how can that be done",
            improvmentDescription: "\n▶︎ Use the user name to make the interaction more personal\n\n▶︎ Add some nice, suddle animations to soothen the experience\n\n▶︎ Suprise with some Easter eggs. Can you find all three of them in the app?"),
        Chapter(headline: "Congratulations 🚀",
                subHeadline: "You have experienced how bad usability feels, determined the problems and learnd how to fix them",
                problemDescription: "The four usability \"rules\" can be applied when designing a new experience, such as an app. Always remeber, there are no dumb useres - there is only bad design. If you like, you can play around with the app fuhter - maybe you notice other bits that can be improved.\n\nI whish you a great WWDC21, see you there!",
                contentSubTitle: "Recommended reads",
                improvmentDescription: "\n▶︎ The Design of Everyday Things (Don Norman)\n▶︎ Universal Principles of Design (William Lidwell, Kritina Holden, Jill Butler)\n▶︎ www.developer.apple.com/design/human-interface-guidelines\n▶︎ Don't Make Me Think (Steve Krug)\n▶︎ Hooked (Nir Eyal)"),
    ]
}

