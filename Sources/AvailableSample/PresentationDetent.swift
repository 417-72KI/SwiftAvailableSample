//import SwiftUI
//
//@available(iOS, deprecated: 16, message: "Use `presentationDetents` in SwiftUI directly.")
//extension View {
//    @ViewBuilder
//    func presentationDetents(_ detents: Set<PresentationDetent>) -> some View {
//        if #available(iOS 16.0, *) {
//            presentationDetents(Set(detents.map(\.detent)))
//        } else {
//            self
//        }
//    }
//}
//
//@available(iOS, deprecated: 16, message: "Use `SwiftUI.PresentationDetent` directly.")
///// Backporting for `SwiftUI.PresentationDetent`
//enum PresentationDetent: Hashable {
//     case medium
//     case large
//     case fraction(CGFloat)
//     case height(CGFloat)
//}
//
//@available(iOS, introduced: 16.0, deprecated: 16.0)
//extension PresentationDetent {
//    var detent: SwiftUI.PresentationDetent {
//        switch self {
//        case .medium: return .medium
//        case .large: return .large
//        case let .fraction(fraction): return .fraction(fraction)
//        case let .height(height): return .height(height)
//        }
//    }
//}
