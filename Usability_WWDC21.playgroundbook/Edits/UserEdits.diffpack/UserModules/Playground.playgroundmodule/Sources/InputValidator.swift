
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
}
