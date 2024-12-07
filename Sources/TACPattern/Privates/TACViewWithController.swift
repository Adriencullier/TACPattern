import SwiftUI

/// Aims to encapsulate view, generate and expose its appropriate Controller
struct TACViewWithController<Controller: TACController, Content: View>: View {
    private let controller: Controller
    private let content: (Controller) -> Content
    
    init(environment: Controller.Environment, content: @escaping (Controller) -> Content) {
        self.controller = .init(environment: environment)
        self.content = content
    }
    
    var body: some View {            
        content(controller)
    }
}
