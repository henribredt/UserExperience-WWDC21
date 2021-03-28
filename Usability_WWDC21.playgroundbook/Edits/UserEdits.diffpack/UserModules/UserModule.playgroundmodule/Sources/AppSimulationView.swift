
import SwiftUI

public struct AppSimulationView: View {
    
    public init() {}
    
    @State private var name: String = "Tim"
    
    public var body: some View {
        ZStack{
            //Color.red
            VStack{
                //Text("Hallo Welt ich begrüße Sie sehr herzlich!")
                //Text(">mehr inhalte hier")
                //Spacer()
                //TextField("TYPE HERE", text: $name)
                //Divider()
                //.padding(.bottom)
                //HStack{
                //Spacer()
                //Button(action: {
                //print("pressed")
                //}) {
                //Text(" Apply changes ")
                //.fontWeight(.bold)
                //.padding(5)
                //.background(Color.blue)
                //.foregroundColor(.white)
                //.cornerRadius(40)
                //}
                //}
                Text("")
                .font(.system(size: 80))
            }
        }
        
        
    }
}
