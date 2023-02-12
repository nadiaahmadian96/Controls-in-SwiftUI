import SwiftUI

struct MainView: View {
    @State var isShowing = true // toggle state – A toggle won’t work unless you’ve give a truth state
    var body: some View {
        Toggle(isOn: $isShowing) {
            isShowing ?  Text("Hello World") : Text("Bye World")
        }.padding()

    }
}
