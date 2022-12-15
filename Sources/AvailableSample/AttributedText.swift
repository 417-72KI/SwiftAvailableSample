import SwiftUI

@available(iOS, deprecated: 15.0, message: "Use `Text` with `AttributedString`")
struct AttributedText: View {
    typealias Body = Text

    var text: Text

    init(@Builder builder: () -> Text) {
        text = builder()
    }

    var body: Text {
        text
    }
}

@available(iOS, deprecated: 15.0, message: "Use `Text` with `AttributedString`")
extension AttributedText {
    @resultBuilder
    enum Builder {
        static func buildBlock(_ components: Text...) -> [Text] {
            components
        }

        static func buildOptional(_ component: Text?) -> Text {
            component ?? Text("")
        }

        static func buildEither(first component: Text) -> Text {
            component
        }

        static func buildEither(second component: Text) -> Text {
            component
        }

        static func buildExpression(_ expression: Text) -> Text {
            expression
        }

        static func buildExpression(_ expression: String) -> Text {
            Text(expression)
        }

        static func buildFinalResult(_ component: [Text]) -> Text {
            var components = component
            let first = components.removeFirst()
            return components.reduce(first, +)
        }
    }
}
