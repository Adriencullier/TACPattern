/// State of the view
/// - Example:
///     enum MyState: TACState {
///         case loading
///         case loaded(data: [Data])
///         case error
///     }
public protocol TACState {
    /// Default state of the view
    static var defaultValue: Self { get }
}
