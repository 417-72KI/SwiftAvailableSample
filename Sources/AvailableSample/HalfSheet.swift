import SwiftUI

@available(iOS, deprecated: 16, obsoleted: 17, message: "Use `presentationDetents` directly.")
extension View {
    /// iOS16以上はハーフモーダルが適用される。iOS15未満は通常の `pageSheet` になる
    /// - Parameter height: ハーフモーダルの高さ。`nil` の場合画面の半分になる。
    @ViewBuilder
    func halfSheetIfAble(height: CGFloat? = nil) -> some View {
        if #available(iOS 16.0, *) {
            if let height {
                presentationDetents([.height(height)])
            } else {
                presentationDetents([.medium])
            }
        } else {
            self
        }
    }
}
