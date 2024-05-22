import SwiftUI

struct MVPView: View {
    
    //MARK: MVP - Part II
    @State var word1Reference: String
    @Binding var word2Reference: String
    @Binding var numberReference: Int

    
    
    var body: some View {
        VStack {
//            TODO: MVP - Part II
            TextField("Enter Word", text: $word1Reference)
            TextField("Enter Word", text: $word2Reference)
            Stepper("Number: \(numberReference)", value: $numberReference)
        }
        .navigationTitle("MVP View")
        .textFieldStyle(.roundedBorder)
        .padding()
        
        
    }
}

