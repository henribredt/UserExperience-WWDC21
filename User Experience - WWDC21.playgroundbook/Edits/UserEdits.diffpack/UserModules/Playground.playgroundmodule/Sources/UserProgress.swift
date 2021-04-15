
import SwiftUI

/// Defines the two InChapterProgress states
/// inital: focus should be on reading text, show booting iphone
/// applyChanges: show iphone with simulated app
public enum InChapterProgress {
    case inital 
    case applyChanges
}

/// Tracks user progress in playground
public class UserProgress: ObservableObject {
    
    public init() {
        // default UserProgress
        chapter = 0
        inChapterProgress = .inital
    }
    
    @Published public var chapter: Int
    @Published public var inChapterProgress : InChapterProgress
    
    /// use to properly update the progress
    public func didTapNext() {
        if inChapterProgress == .inital {
            inChapterProgress = .applyChanges
        } else {
            chapter += 1
            inChapterProgress = .inital
        } 
    }
}
