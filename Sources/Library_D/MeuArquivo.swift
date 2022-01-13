public class BigBrotherBrasil {
    var initials: String
    var edition: Int
    
    public init(initials: String, edition: Int) {
        self.initials = "BBB"
        self.edition = 22
    }
    
    public func getInitialsAndEdition() -> String {
        return "\(initials) in edition \(edition) coming sonn"
    }
}
