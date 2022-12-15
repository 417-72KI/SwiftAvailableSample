import SwiftUI

public struct SheetView: View {
    @available(iOS, deprecated: 15.0, message: "Use dismissAction instead.")
    @Binding var isPresenting: Bool

    @available(iOS, deprecated: 15.0, message: "Use dismissAction instead.")
    public init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
    }

    public var body: some View {
        NavigationView {
            VStack {
                Text("This is sheet view")
            }.navigationViewStyle(.stack)
                .navigationBarItems(
                    leading: Button {
                        isPresenting = false
                    } label: {
                        Image(systemName: "xmark")
                    }
                )
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isPresenting: .constant(true))
    }
}
