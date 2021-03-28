
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
        Chapter(headline: "Welcome 👋🏻", subHeadline: "This playground shows you how imortant a good UX is.", problemDescription: "The preview on the left side is fully interactive.\nYou can play around a little, doint that you will notice many usability issues.\nWe will improve the UX step by step with some explanation.\n\n\n\t👆🏻 Tap 'Get started' to begin.", contentSubTitle: "Notice", improvmentDescription: "This experience looks best in darkmode\n\niPadOS\nUse the floating keyboard when you enter text input\n\nmacOS\nRun in a non-fullscreen window of Swift Playgrounds as content could get hidden"),
        Chapter(headline: "This is a headline", subHeadline: "This is a subheadline", problemDescription: "Some interesting text goes here and it surely fulls mutliple lines, as it nicely explains whats good and whats bad.\n\n\t▶︎ This or that\n\t▶︎ Or this or that or it", contentSubTitle: "How to fix", improvmentDescription: "Some interesting text goes here and if surely fulls mutliple lines, as it nicely explains whats good and whats bad.\n\n\t▶︎ This or that\n\t▶︎ Or this or that or it"),
        Chapter(headline: "Typography 🖋", subHeadline: "", problemDescription: "The app currently uses a wirded comination of typography", contentSubTitle: "How to fix", improvmentDescription: "Tap 👆🏻 'Apply changes' to used use correctly sized, display friendly sans serif Schriften.")
    ]
}

