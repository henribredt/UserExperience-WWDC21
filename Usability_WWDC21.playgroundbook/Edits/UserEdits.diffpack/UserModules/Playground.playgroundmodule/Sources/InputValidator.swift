
public struct InputValidator {
    /// Basic input validator for name and mail
    
    static func namePassedCheck(name: String) -> Bool{
        if name.count < 3 {
            return false
        }
        
        return true
    }
    
    static func mailPassedCheck(mail: String) -> Bool {
        
        // exampleName@domaine.countryCode
        if !mail.contains("@") || !mail.contains(".io"){
            return false
        }
        
        return true
    }
    
    // only used in app1 where the user selects the emojo from the keyboard
    static func avatarPassedCheck(avatar: String) -> Bool {
        // check if its only a singe character
        if avatar.count != 1 {
            return false
        }
        
        return true
    }
}
