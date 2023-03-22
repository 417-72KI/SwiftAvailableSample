import SwiftUI
import Q3

struct ContentView: View {
    @State private var isPresenting = false

    var body: some View {
        VStack {
            Button {
                isPresenting = true
            } label: {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                    Text("Hello, world!")
                }.foregroundColor(.accentColor)
                    .padding()
            }
            .sheet(isPresented: $isPresenting) {
                SheetView()
                    .presentationDetents([.medium])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
