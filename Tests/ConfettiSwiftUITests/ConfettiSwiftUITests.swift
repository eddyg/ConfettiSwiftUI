import XCTest
@testable import ConfettiSwiftUI

import SwiftUI

final class ConfettiSwiftUITests: XCTestCase {
    @State private var trigger = false

    func testConfettiCannonSupportsAllContentKinds() {
        _ = ConfettiSwiftUI.ConfettiCannon(
            trigger: $trigger,
            confettis: [
                .shape(.circle),
                .text("🎉"),
                .sfSymbol(symbolName: "star.fill"),
                .assetSymbol(symbolName: "custom.symbol"),
                .image("custom-image")
            ]
        )
        _ = Button("Animation") {
            self.trigger.toggle()
        }
    }

    static var allTests = [
        ("testConfettiCannonSupportsAllContentKinds", testConfettiCannonSupportsAllContentKinds),
    ]
}
