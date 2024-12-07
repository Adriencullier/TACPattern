import Foundation

/// Environment of the module
/// It needs to contain all the instances required by the module
/// - Example:
///     final class MyEnvironment: TACEnvironment {
///         unowned let myService: MyService
///
///         init(myService: MyService) {
///             self.myService = myService
///         }
///      }
public protocol TACEnvironment {}
