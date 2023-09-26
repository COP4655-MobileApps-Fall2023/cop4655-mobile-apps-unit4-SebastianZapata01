//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

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
            Task(title: "Collect some natural water",
                 description: "At Camp Wallaka, you have been instructed to find some natural water that comes from a waterfall. You must select a photo of a waterfall to find the source."),
            Task(title: "Get some flowers",
                 description: "Mrs. Betty is having a party and she wants you to help find the perfect flowers for decoration. You must select a photo of flowers to find and get some for the party."),
            Task(title: "Analyze some plants",
                 description: "To complete your final project for botany class, you must find some plants in real life to write a paper about. You must select a photo of plants to ")
        ]
    }
}
