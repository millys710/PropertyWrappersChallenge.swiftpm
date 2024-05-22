import SwiftUI

struct Stretch1Name: View {
    
    //MARK: Stretch #1 - Part V
    @EnvironmentObject var contact : Contact
    
    
    
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            //TODO: Stretch #1 - Part II
            TextField("Enter Name", text: $contact.name)
                
            NavigationLink("Enter Contact Info") { 
                Stretch1Address(isActive: $isActive)
            }
        }
        .navigationTitle("Enter Name Page")
        .navigationBarTitleDisplayMode(.inline)
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}
