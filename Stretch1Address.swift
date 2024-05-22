import SwiftUI

struct Stretch1Address: View {
    
    //MARK: Stretch #1 - Part VI
    @EnvironmentObject var contact : Contact
    
    
    
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            //TODO: Stretch #1 - Part III
            TextField("Enter Address", text: $contact.address)
                
            NavigationLink("Enter Contact Info") {
                Stretch1Phone(isActive: $isActive)
            }
        }
        .navigationTitle("Enter Address Page")
        .navigationBarTitleDisplayMode(.inline)
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}
