import SwiftUI

struct MainView: View {
    @State private var value = 1
    var body: some View {
        NavigationView {
            VStack {
                Text("Current value: \(value)")
                Stepper("Number of guests", value: $value, in:1...20)
            }
            .padding()
        .navigationTitle("Reservation form")
        }
    }
}
