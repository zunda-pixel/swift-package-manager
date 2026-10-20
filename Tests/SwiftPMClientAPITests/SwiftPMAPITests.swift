//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2026 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftPMAPI
import Testing

@Test
func buildDestinationFromSourceKitLSPAPIIsReachableThroughSwiftPMAPIImportAlone() throws {
    let destination = BuildDestination.target

    let destinationIsTarget: Bool
    switch destination {
    case .target:
        destinationIsTarget = true
    case .host:
        destinationIsTarget = false
    }

    #expect(destinationIsTarget)
}
