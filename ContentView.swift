import SwiftUI

struct ContentView: View {
    
    //MARK: MVP - Part I
    @State var word1: String = ("")
    @State var word2: String = ("")
    @State var number: Int = 0
    
    
    
    //MARK: Stretch #1 - Part IV
    @EnvironmentObject var contact: Contact
        
    
    
    
    @State var isActive: Bool = false
    @State var enteredNumber: Int? = nil
    @State var myNumber: Int = 0
    
    var body: some View {
        
        Group {
            Divider()
            Text("Property Wrappers Challenge")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
        VStack {
            NavigationView {
                VStack {
                    Text("MVP")
                        .font(.largeTitle)
                        .underline()
                    HStack {
                        VStack(alignment: .trailing, spacing: 40) {
                            Text("Value Passed:")
                            Text("Reference Passed:")
                            Text("Reference Passed:")
                        }
                        VStack(alignment: .leading, spacing: 25){
                            //TODO: MVP - Part I
                            TextField("Enter a word", text: $word1)
                            TextField("Enter a word", text: $word2)
                            Stepper("\(number)", value: $number)
                        }
                        
                    }
                    
                    
                    NavigationLink("Go To MVP View") { 
                        //MARK: MVP - Part III
                        MVPView(word1Reference: word1, word2Reference: $word2, numberReference: $number) 
                        
                        
                    }
                    
                    Divider()
                    
                    Text("Stretch #1")
                        .font(.largeTitle)
                        .underline()
                    VStack(spacing: 10) {
                        //TODO: Stretch #1 - Part I
                        Text("Name: \(contact.name)")
                        Text("Address: \(contact.address)")
                        Text("Phone: \(contact.phone)")
                        
                        NavigationLink("Enter Contact Info", isActive: $isActive) { 
                            Stretch1Name(isActive: $isActive)
                        }
                        
                    }
                    .padding()
                    
                    Divider()
                    Text("Stretch #2")
                        .font(.largeTitle)
                        .underline()
                    VStack {
                        TextField("Enter a number 1 to 10", value: $enteredNumber, format: .number)
                            .onSubmit {
                                let confined = BoundedNumber(number: enteredNumber!)
                                myNumber = confined.number
                            }
                        Text(myNumber == 0 ? "No Number Entered" : "\(myNumber)")
                    }
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    
                }
                
            }
            .navigationViewStyle(.stack)
            .textFieldStyle(.roundedBorder)
            .padding()
        }
        
        Divider()
        Group {
            Image("MobileMakersEduNB")
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
        }
        .padding()
    }
}

