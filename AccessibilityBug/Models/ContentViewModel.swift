import UIKit

struct ContentViewModel {
    let title: String
    let image: UIImage
    let color: UIColor
    let accessibilityLabel: String
}

extension ContentViewModel {
    static var all: [ContentViewModel] {
        return [
            .init(title: "Cyan background",
                  image: UIImage(),
                  color: .cyan,
                  accessibilityLabel: "The cyan background"),
            .init(title: "Green background",
                  image: UIImage(),
                  color: .green,
                  accessibilityLabel: "The green background")
        ]
    }
}
