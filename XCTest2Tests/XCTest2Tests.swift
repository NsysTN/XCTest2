//
//  XCTest2Tests.swift
//  XCTest2Tests
//
//  Created by nsystem2 on 2019/12/11.
//  Copyright © 2019 nsystem2. All rights reserved.
//

import XCTest
@testable import XCTest2

class XCTest2Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    /*
    func testボタンを押して１と２に値が入ってない時にエラーになる(){
        let vc = ViewController()
        vc.viewDidLoad()
        vc.txt1.text = ""
        vc.txt2.text = ""
        vc.btnTxtLbl.sendActions(for: .touchUpInside)
        XCTAssertEqual(vc.lblA.text, "値を入力してください")
    }
    */

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
