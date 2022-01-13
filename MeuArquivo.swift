public class BigBrotherBrasil {
    var initials: String
    var edition: Int
    
    init(initials: String, edition: Int) {
        self.initials = "BBB"
        self.edition = 22
    }
    
    func getInitialsAndEdition() -> String {
        return "\(initials) in edition \(edition) coming sonn"
    }
}
