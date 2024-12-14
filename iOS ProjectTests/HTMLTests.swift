//
//  HTMLTests.swift
//  iOS ProjectTests
//
//  Created by zhgchgli on 2024/12/13.
//

import XCTest
@testable import iOS_Project

final class HTMLTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testHTMLToNSAttributedString() {
        let htmlString = "<b>Hello World</b>"
        let result = HTMLParser.parse(htmlString)
        
        XCTAssertEqual((result.attribute(.font, at: 0, effectiveRange: nil) as? UIFont)?.fontDescriptor.symbolicTraits.rawValue, 800)
    }
}
