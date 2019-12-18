extension Node {
    var isRootNode: Bool {
        switch self {
        case .array, .object: return true
        default: return false
        }
    }
}
