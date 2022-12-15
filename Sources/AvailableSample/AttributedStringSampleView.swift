import SwiftUI

struct AttributedStringSampleView: View {
    var body: some View {
        VStack {
            Text(attributedString)
        }
    }
}

extension AttributedStringSampleView {
    @available(iOS 15, *)
    var attributedString: AttributedString {
        var str = AttributedString("Foo Bar Baz Qux Quux")
        if let range = str.range(of: "Bar") {
            str[range].foregroundColor = .red
        }
        if let range = str.range(of: "Baz") {
            str[range].font = .title
        }
        if let range = str.range(of: "Qux") {
            str[range].font = .footnote
            str[range].foregroundColor = .green
        }
        return str
    }
}

struct AttributedStringSampleView_Previews: PreviewProvider {
    static var previews: some View {
        AttributedStringSampleView()
    }
}
