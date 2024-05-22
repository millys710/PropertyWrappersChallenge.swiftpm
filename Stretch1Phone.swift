import SwiftUI

struct Stretch1Phone: View {
    
    //MARK: Stretch #1 - Part VII
    @EnvironmentObject var contact : Contact
    
    
    
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            //TODO: Stretch #1 - Part IV
            TextField("Enter Phone Number", text: $contact.phone)
                
            Button("Return to Main Page") { 
                isActive = false
            }
        }
        .navigationTitle("Enter Phone Number Page")
        .navigationBarTitleDisplayMode(.inline)
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

