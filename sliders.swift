import SwiftUI

struct MainView: View {
    @State private var size: CGFloat = 0.1
    var body: some View {
        VStack {
            Text("Fiore Cafe").font(.system(size: size * 50))
            Slider(value: $size)
            
        }
        .padding()
    }
}
