import SwiftUI


//MARK: Stretch #1 - Part I
class Contact: ObservableObject{
   @Published var name: String = ""
   @Published var address: String = ""
   @Published var phone: String = ""
}
