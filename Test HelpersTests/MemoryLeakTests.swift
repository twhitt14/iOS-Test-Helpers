//
//  MemoryLeakTests.swift
//  Test HelpersTests
//
//  Created by Trevor Whittingham on 5/19/22.
//

import XCTest
import Test_Helpers

class MemoryLeakTests: XCTestCase {
    
    // Feel free to add this `trackForMemoryLeaks` call at the end of every test, making sure the SUT is able to be deallocated after it's no longer used.

    func test_SomeClass_MemoryLeak() throws {
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
