import SwiftUI

@main
struct MyApp: App {
    
    //MARK: Stretch #1 - Part II
   @StateObject var contact = Contact()
    
    
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
            //MARK: Stretch #1 - Part III
                .environmentObject(contact)    
            
            
            
        }
    }
}



