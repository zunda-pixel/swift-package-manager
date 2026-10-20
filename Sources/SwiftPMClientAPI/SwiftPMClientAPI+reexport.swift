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

// public import typealias Basics.TSCAbsolutePath // SwiftPM will not expose transitive symbols.
@_spi(SwiftPMInternal) public import struct Basics.Environment  // Need SwiftPMInternal for an initializer and a dictionary initializer
public import class Basics.Cancellator
public import class Basics.KeychainAuthorizationProvider
public import class Basics.NetrcAuthorizationProvider
public import class Basics.ObservabilityScope
public import class Basics.ObservabilitySystem
public import class Basics.ThreadSafeArrayStore
public import class Basics.ThreadSafeBox
public import class Basics.VirtualFileSystem
public import enum Basics.OutputCondition
public import enum Basics.Sandbox
public import enum Basics.SandboxNetworkPermission
public import enum Basics.TestingLibrary
public import protocol Basics.AuthorizationProvider
public import protocol Basics.DiagnosticsHandler
public import protocol Basics.FileSystem
public import protocol Basics.ObservabilityHandlerProvider
public import struct Basics.AbsolutePath
public import struct Basics.CompositeAuthorizationProvider
public import struct Basics.Diagnostic
public import struct Basics.IdentifiableSet
public import struct Basics.ObservabilityMetadata
public import struct Basics.RelativePath
public import struct Basics.SourceControlURL
public import struct Basics.SwiftVersion
public import struct Basics.Triple
public import var Basics.localFileSystem


public enum SwiftPMClientAPI {
    // HTL uses the following API. However, SwiftPM should not expose Process-related API.  Use `swift-subprocess` instead
    // public typealias AsyncProcess = Basics.AsyncProcess
    // public typealias AsyncProcessResult = Basics.AsyncProcessResult

    public typealias IdentifiableSet = Basics.IdentifiableSet
    public typealias AbsolutePath = Basics.AbsolutePath
    public typealias RelativePath = Basics.RelativePath
    public typealias FileSystem = Basics.FileSystem
    public typealias VirtualFileSystem = Basics.VirtualFileSystem
    public static var localFileSystem: FileSystem { Basics.localFileSystem }
    public typealias Sandbox = Basics.Sandbox
    public typealias SandboxNetworkPermission = Basics.SandboxNetworkPermission
    public typealias Cancellator = Basics.Cancellator

    public typealias Environment = Basics.Environment
    public typealias ThreadSafeArrayStore = Basics.ThreadSafeArrayStore
    public typealias ThreadSafeBox = Basics.ThreadSafeBox
    public typealias SwiftVersion = Basics.SwiftVersion
    public typealias Triple = Basics.Triple
    public typealias OutputCondition = Basics.OutputCondition

    public typealias TestingLibrary = Basics.TestingLibrary

    public typealias Diagnostic = Basics.Diagnostic
    public typealias DiagnosticsHandler = Basics.DiagnosticsHandler
    public typealias ObservabilityHandler = Basics.ObservabilityHandlerProvider
    public typealias ObservabilityMetadata = Basics.ObservabilityMetadata
    public typealias ObservabilityScope = Basics.ObservabilityScope
    public typealias ObservabilitySystem = Basics.ObservabilitySystem


    public typealias SourceControlURL = Basics.SourceControlURL

    public typealias AuthorizationProvider = Basics.AuthorizationProvider
    public typealias KeychainAuthorizationProvider = Basics.KeychainAuthorizationProvider
    public typealias CompositeAuthorizationProvider = Basics.CompositeAuthorizationProvider
    public typealias NetrcAuthorizationProvider = Basics.NetrcAuthorizationProvider
}
