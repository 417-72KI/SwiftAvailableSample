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
                SheetView()
                    .halfSheetIfAble()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
