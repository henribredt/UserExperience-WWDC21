
public struct InputValidator {
    /// Basic sign up screen input validator
    static func validate(name: String, mail: String, password: String) -> Bool{
        
        // check mail
        if name.count < 3 {
            // throw error
            return false
        }
        
        // check mail
        if !mail.contains("@") {
            // throw error
            return false
        }
        
        // check password
        if password.count < 4 {
            // throw error
            return false
        }
        
        return true
    }
}
