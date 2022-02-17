//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Mai Alaa on 17/02/2022.
//  Copyright © 2022 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {

    var entryUnderTesting: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTesting = Entry("Title", "Content")
    }
    
    override func tearDown() {
        entryUnderTesting = nil
        super.tearDown()
    }
    
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTesting)
        let deseralizedData = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(deseralizedData?.title ,"Titless", "Titles don't match")
        XCTAssertEqual(deseralizedData?.content ,"Content", "Contents don't match")
    }

}
