import SwiftUI

public struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    @available(iOS, deprecated: 15.0, message: "Use dismissAction instead.")
    @Binding var isPresenting: Bool

    @available(iOS, deprecated: 15.0, message: "`isPresenting` is no longer used. Use `init()`.")
    public init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
    }

    public init() {
        _isPresenting = .constant(false)
    }

    public var body: some View {
        NavigationView {
            VStack {
                Text("This is sheet view")
            }.navigationViewStyle(.stack)
                .navigationBarItems(
                    leading: Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                )
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
