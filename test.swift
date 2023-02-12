struct MainView: View {
    @State private var isShowing = true
    @State private var value = 1
    @State private var size : CGFloat = 0.7
    @State private var progress = 0.5
    @State var selectedDate = Date()
    
    var dateClosedRange : ClosedRange<Date>{
        let min = Calendar.current.date(byAdding: .day, value : -1 ,to: Date())!
        let max = Calendar.current.date(byAdding: .day, value : 1 ,to: Date())!
        return min...max
    }
    var body: some View {
        NavigationView {
            VStack{
                Toggle(isOn: $isShowing) {
                    isShowing ? Text("On") :  Text("Off")
                }.padding()
                
                Stepper("Number Of Guests?", value: $value , in: 1...20)
                    .padding()
                Text("Number of guests : \(value)")
                
                
                Slider(value: $size)
                    .padding()
                Text("Volume")
                    .font(.system(size: size*50))
                
                
                ProgressView(value: progress).padding()
                Button("Loading") {
                    progress += 0.05
                }
                
                DatePicker(selection: $selectedDate,
                           in: dateClosedRange,
                           displayedComponents: .date) {
                    Text("Due Date")
                }.padding()
                
            }.navigationTitle("Controls in swiftUI")
            
        }
    }
}
