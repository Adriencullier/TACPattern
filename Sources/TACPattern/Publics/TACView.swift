import SwiftUI

/// View of the module
public protocol TACView: View {
    /// Controller type conformed to TACController
    associatedtype Controller: TACController
    associatedtype Content: View
    
    /// Environment that will be pass in the TACViewWithController
    var environment: Controller.Environment { get }
        
    /// Body of the view
    /// - Parameter controller: controller of the view, used to trigger actions and get view state
    /// - Returns: view
    @ViewBuilder func body(_ controller: Controller) -> Content
}

/// TACView extension with body
public extension TACView {
    var body: some View {
        TACViewWithController<Controller, Content>(environment: self.environment) { controller in
            return body(controller)
        }
    }
}
