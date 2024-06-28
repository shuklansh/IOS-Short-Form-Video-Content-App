//
//  IOS_Short_Form_Video_Content_AppUITestsLaunchTests.swift
//  IOS Short Form Video Content AppUITests
//
//  Created by Ansh Shukla on 28/06/24.
//

import XCTest

final class IOS_Short_Form_Video_Content_AppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
