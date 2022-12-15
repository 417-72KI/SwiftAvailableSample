import SwiftUI

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
                if #available(iOS 16.0, *) {
                    SheetView()
                        .presentationDetents([.medium])
                } else {
                    SheetView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
