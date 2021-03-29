
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
            subHeadline: "This playground shows how frustrating bad UX is and how to fix it", 
            problemDescription: "The preview on the left is going to be fully interactive. In the beginning you will notice many usability issues. We will improve the UX step by step with some explanation and some key lessons to take away.\n\n\t💡 There are no dumb useres - there is only bad design",
            contentSubTitle: "Notice", 
            improvmentDescription: "This experience looks best in darkmode.\nTo enter text, please use the small, floating keyboard of iPadOS or an external keyboard, because the regular onscreen keyboard reduces the space for the live view significantly.\n\n\n\t👆🏻 Tap 'Get started' to begin"),
        Chapter(
            headline: "This is a headline",
            subHeadline: "This is a subheadline",
            problemDescription: "Some interesting text goes here and it surely fulls mutliple lines, as it nicely explains whats good and whats bad.\n\n\t▶︎ This or that\n\t▶︎ Or this or that or it",
            contentSubTitle: "How to fix",
            improvmentDescription: "Some interesting text goes here and if surely fulls mutliple lines, as it nicely explains whats good and whats bad.\n\n\t▶︎ This or that\n\t▶︎ Or this or that or it"),
        Chapter(
            headline: "Typography 🖋",
            subHeadline: "Bad typo is bad",
            problemDescription:"The app currently uses a wirded comination of typography",
            contentSubTitle: "How to fix",
            improvmentDescription: "Tap 👆🏻 'Apply changes' to used use correctly sized, display friendly sans serif Schriften."),
    ]
}

