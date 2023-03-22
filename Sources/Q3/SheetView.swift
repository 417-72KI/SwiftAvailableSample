import SwiftUI

public struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    public init() {
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
