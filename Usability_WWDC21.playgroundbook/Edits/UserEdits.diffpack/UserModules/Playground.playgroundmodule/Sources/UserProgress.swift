
import SwiftUI

public enum InChaperProgress {
    case inital
    case applyChanges
}

public class UserProgress: ObservableObject {
    
    public init() {
        // default UserProgress
        chapter = 0
        inChapterProgress = .inital
    }
    
    @Published public var chapter: Int
    @Published public var inChapterProgress : InChaperProgress
    
    /// use to properly update the progress
    public func didTapNext() {
        if inChapterProgress == .inital {
            inChapterProgress = .applyChanges
        }else {
            chapter += 1
            inChapterProgress = .inital
        } 
    }
}
