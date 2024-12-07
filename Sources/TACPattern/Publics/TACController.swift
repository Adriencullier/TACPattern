import SwiftUI

/// Controller of the view
/// Make the controller conform to @Observable in order to trigger a view refresh on state change
/// - Example:
///     @Observable
///     final class MyController: TACController { ... }
public protocol TACController: AnyObject {
    /// State type conformed to TACState
    associatedtype State: TACState
    /// Environment type conformed to TACEnvironment
    associatedtype Environment: TACEnvironment
    /// Action type conformed to TACAction
    associatedtype Action: TACAction
    
    /// Current state of the view
    var state: State { get set }
    
    /// Required controller init
    /// - Parameter environment: environment get from outside the module
    init(environment: Environment)
    
    /// Aims to handle the action triggered from the view
    /// - Parameter action: triggered action
    func handleAction(_ action: Action)
}

public extension TACController {
    /// Aims to trigger an action
    /// - Parameter action: action triggered
    func trigger(_ action: Action) {
        handleAction(action)
    }
}
