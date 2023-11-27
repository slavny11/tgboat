//
//  File.swift
//
//
//  Created by Viacheslav on 27/11/23.
//

import Foundation
import Vapor

final class Weekdays {

    func getTheMessage() -> String {
        // Get the current weekday
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE" // This will give you the full weekday name
        let weekday = dateFormatter.string(from: currentDate)

        // Use the current weekday to determine the message
        return sendMessage(for: weekday)
    }

    private func sendMessage(for weekday: String) -> String {
        switch weekday {
        case "Monday":
            return "Monday: Paper"
        case "Tuesday":
            return "Tuesday: Something"
        case "Wednesday":
            return "Wednesday: Umido"
        case "Thursday":
            return "Thursday: Plastic"
        case "Friday":
            return "Friday: Umido"
        case "Saturday":
            return "Saturday: Indiffirent"
        case "Sunday":
            return "Sunday: Glass and umido"
        default:
            return "Fuckk it error"
        }
    }
}
