

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Iced Latte from Fort Aguada",
                 description: "Go to the Taj Hotel in Fort Aguada and get an iced latte"),
            Task(title: "Find the backwaters near Kochi",
                 description: "Go to the backwaters near Kochi and take a picture")
        ]
    }
}
