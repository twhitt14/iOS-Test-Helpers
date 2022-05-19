//
//  MemoryLeakTests.swift
//  Test HelpersTests
//
//  Created by Trevor Whittingham on 5/19/22.
//

import XCTest
import Test_Helpers

class MemoryLeakTests: XCTestCase {

    func test_ViewController_MemoryLeak() throws {
        let sut = SomeClass()
        
        trackForMemoryLeaks(sut)
    }

}

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject,
                             file: StaticString = #filePath,
                             line: UInt = #line)
    {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
