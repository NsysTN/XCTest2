//
//  XCTest2UITests.swift
//  XCTest2UITests
//
//  Created by nsystem2 on 2019/12/11.
//  Copyright © 2019 nsystem2. All rights reserved.
//

import XCTest

class XCTest2UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test必須(){
        
        let app = XCUIApplication()
        let txt1aiTextField = app.textFields["txt1ai"]
        let txt2aiTextField = app.textFields["txt2ai"]
        let btnL = app.buttons["btnTxtLblai"]
        let lblAlabel = app.staticTexts["lblAai"]

        txt1aiTextField.tap()
        //txt1aiTextField.typeText("123")
        
        txt2aiTextField.tap()
        //txt2aiTextField.typeText("456")

        btnL.tap()

        XCTAssertEqual(lblAlabel.label, "値を入力してください")
        
    }

    func testボタン押下(){
        
        let app = XCUIApplication()
        let txt1aiTextField = app.textFields["txt1ai"]
        let txt2aiTextField = app.textFields["txt2ai"]
        let btnL = app.buttons["btnTxtLblai"]
        let lblAlabel = app.staticTexts["lblAai"]

        txt1aiTextField.tap()
        txt1aiTextField.typeText("123")
        
        txt2aiTextField.tap()
        txt2aiTextField.typeText("456")

        btnL.tap()

        XCTAssertEqual(lblAlabel.label, "123 456")
        
    }
    
    func test画面(){
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
