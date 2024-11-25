//
//  PasswordCriteriaTests.swift
//  PasswordTests
//
//  Created by Alief Ahmad Azies on 13/11/24.
//

import XCTest

@testable import Password

final class PasswordLengthCriteriaTests: XCTestCase {
    
    // Boundary conditions 8-32
    func testShowrt() throws {
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234567"))
    }
    
    func testLong() throws { // 33
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("123456789101112131415161718192021222324252627282330313233"))
    }
    
    func testValidShort() throws {
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678"))
    }
    
    func testValidLong() throws {
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("1234567891011121314151617181920"))
    }
}

class PasswordOtherCriteriaTests: XCTestCase {
    
    func testSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.noSpaceCriteriaMet("abc"))
    }
    
    func testSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.noSpaceCriteriaMet("a bc"))
    }
    
    func testLengthAndNoSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.lengthAndNoSpaceMet("123456aA!"))
    }
    
    func testLengthAndNoSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lengthAndNoSpaceMet("123456a A!"))
    }
    
    func testUppercaseMet() throws {
        XCTAssertTrue(PasswordCriteria.uppercaseMet("ABC"))
    }
    
    func testUppercaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.uppercaseMet("abc"))
    }
    
    func testLowercaseMet() throws {
        XCTAssertTrue(PasswordCriteria.lowercaseMet("abc"))
    }
    
    func testLowercaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lowercaseMet("ABC"))
    }
    
    func testDigitMet() throws {
        XCTAssertTrue(PasswordCriteria.numbercaseMet("12345678"))
    }
    
    func testDigitNotMet() throws {
        XCTAssertFalse(PasswordCriteria.numbercaseMet("abcdefghijkl"))
    }
    
    func testSpecialCharacterMet() throws {
        XCTAssertTrue(PasswordCriteria.specialCharMet("123456aA!"))
    }
    
    func testSPecialCharacterNotMet() throws {
        XCTAssertFalse(PasswordCriteria.specialCharMet("123456aA"))
    }
    
}
