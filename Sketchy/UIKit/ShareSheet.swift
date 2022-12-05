//
//  ShareSheet.swift
//  Sketchy
//
//  Created by Brittany Rima on 12/4/22.
//

import SwiftUI

struct ShareSheet: UIViewControllerRepresentable {
    typealias Callback = (
        _ activityType: UIActivity.ActivityType?,
        _ completed: Bool,
        _ returnedItems: [Any]?,
        _ error: Error?) -> Void

    var activityItems: [Any]
    var applicationActivities: [UIActivity]?
    var excludeActivityTypes: [UIActivity.ActivityType]?
    var callback: Callback?

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems,
                                                  applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludeActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) { }
}

struct ShareSheet_Previews: PreviewProvider {
    static var previews: some View {
        let theShareSheet = ShareSheet(activityItems: ["A preview string" as NSString],
                                       excludeActivityTypes: [UIActivity.ActivityType.airDrop])
        return theShareSheet
    }
}
