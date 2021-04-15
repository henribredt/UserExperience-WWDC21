
/// Basic input validator for name and mail
public struct InputValidator {
    
    /// pass if name has at least 4 characters 
    static func namePassedCheck(name: String) -> Bool{
        if name.count < 3 {
            return false
        }
        
        return true
    }
    
    /// pass if mail contains @ and .io, exmaple pass: name@domaine.io
    static func mailPassedCheck(mail: String) -> Bool {
        
        if !mail.contains("@") || !mail.contains(".io"){
            return false
        }
        
        return true
    }
    
    /// pass if avatar is sigle character, only use in app1 where the user selects the emojo from the keyboard
    static func avatarPassedCheck(avatar: String) -> Bool {
        // check if its only a singe character
        if avatar.count != 1 {
            return false
        }
        
        return true
    }
}
