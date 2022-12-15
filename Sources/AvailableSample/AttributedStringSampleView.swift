import SwiftUI

struct AttributedStringSampleView: View {
    var body: some View {
        VStack {
            if #available(iOS 15, *) {
                Text(attributedString)
            } else {
                AttributedText {
                    Text("Foo")
                    Text(" ")
                    Text("Bar")
                        .foregroundColor(.red)
                    Text(" ")
                    Text("Baz")
                        .font(.title)
                    Text(" ")
                    Text("Qux")
                        .font(.footnote)
                        .foregroundColor(.green)
                    Text(" ")
                    Text("Quux")
                }
            }
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
