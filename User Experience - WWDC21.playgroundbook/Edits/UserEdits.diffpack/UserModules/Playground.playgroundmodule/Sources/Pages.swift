
/// Defines how a page content is structured
public struct Page {
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

/// Playgrounds page contents
public struct Pages {
    public init() {}
    
    public static let bank = [
        Page(
            headline: "Welcome  šš»", 
            subHeadline: "This playground focuses on three important aspects of designing good user experiences (UX)", 
            problemDescription: "We are dealing with a simple 'Create Profile' screen as an example and discover what makes a good UX. The preview on the left is going to be fully interactive. \n\nTap the 'Run app' button and try to create a profile there - you will notice many usability issues, especially in the case of unexpected input. We will improve the UX step by step with some explanation and key lessons to take away. This first version is intentionally designed to be poorly usable, so you can experience how bad usability feels.",
            contentSubTitle: "Notice", 
            improvmentDescription: "When creating a profile you can use a short fictional mail like \"a@b.io\".\nTo enter text in the app simulation, please use the small, floating keyboard of iPadOS or an external keyboard.\n\n\n\tšš» Tap the bottom right blue button"),
        Page(
            headline: "Design clear and discoverable š",
            subHeadline: "Create hierarchy and eliminate non essentials",
            problemDescription: "Always provide the minimum amout of interface elements that allow the desired functionality. Create tidy interfaces with a clear structure. Offer obvious signifiers pointing to the current options the user has (affordances) and highlight the primary action to guide the user.",
            contentSubTitle: "Ideas how that can be done",
            improvmentDescription: "As you probably have noticed, the example app currently is cluttered, highlights a secondary action and using it just does not feel good. It's time to improve that with the following changes.\n\nā¶ļø Eliminate the non essential interface elements\nā¶ļø Use precise typography and a clear design language to create hierarchy\nā¶ļø Label the interaction elements (if its not absolutely obvious)\nā¶ļø Provide a more comfortable way to select the avatar emoji\nā¶ļø Make the button discoverable and meaningful"),
        Page(
            headline: "Provide rich feedback  šš»",
            subHeadline: "Make the state obvious - especially in the case of errors",
            problemDescription: "The design must always provide enough information about the current state of the app. Make it as easy as possible for the user to understand what's happening so that he has the feeling of control. Indicate instantly erroneous input and provide help on how to fix possible issues.",
            contentSubTitle: "Ideas how that can be done",
            improvmentDescription: "As of right now, the example app will only check the input when the 'Create' button was tapped and provides just general help. The user can't know which input was incorrect. Let's change that.\n\nā¶ļø Perform the input validation in realtime and indicate the result instantly \nā¶ļø Use colors to indicate errors (red) and correct input (green)\nā¶ļø Provide relevant error messages\nā¶ļø Show tips when the user taps on the exclamation mark "),
        Page(
            headline: "Make it exciting  š¤©",
            subHeadline: "Add the little extra, the unexpected",
            problemDescription:"Creating an experience worth remembering takes more than doing nothing wrong. Make it interesting, spend time on details, try to take the interaction to the next level - simply make it surprisingly good. Pay attention to make it suddle and not to disturb the general user flow.",
            contentSubTitle: "Ideas how that can be done",
            improvmentDescription: "Now it's time for some final polishes to create a truly remarkable user experience. \n\nā¶ļø Add some nice, suddle animations to smoothen the experience\nā¶ļø Make the text fields shake on incorrect input\nā¶ļø Focus on microinteractions, animate the emoji selection"),
        Page(headline: "Congratulations  š",
                subHeadline: "You have experienced how bad usability feels, determined the problems and learnd how to fix them",
                problemDescription: "The three concepts of this playground can be applied when designing a new experience, such as an app. Always remember, there are no dumb users - there is only bad design. If you like, tap 'Run final app' and play around with the current app further. You can think about other bits that could be improved.\n\nI wish you a great WWDC21, see you there!",
                contentSubTitle: "Recommended reads",
                improvmentDescription: "ā¶ļø The Design of Everyday Things (Don Norman)\nā¶ļø Universal Principles of Design (William Lidwell, Kritina Holden, Jill Butler)\nā¶ļø www.developer.apple.com/design/human-interface-guidelines\nā¶ļø Don't Make Me Think (Steve Krug)\nā¶ļø Hooked (Nir Eyal)"),
    ]
}

