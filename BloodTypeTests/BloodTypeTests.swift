//
//  BloodTypeTests.swift
//  BloodTypeTests
//
//  Created by Diggo Silva on 27/05/25.
//

import XCTest
@testable import BloodType

final class BloodTypeTests: XCTestCase {
    
    var viewModel: BloodTypeViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = BloodTypeViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testSelectedTypeSetsCorrectData() {
        viewModel.selectedType(at: 0)
        
        let donate = viewModel.donateText()
        let receive = viewModel.receiveText()
        
        XCTAssertEqual(donate, BloodTypeData.all[0].donate)
        XCTAssertEqual(receive, BloodTypeData.all[0].receive)
    }
    
    func testInvalidIndexDoesNotCrash() {
        viewModel.selectedType(at: 100)
        
        XCTAssertEqual(viewModel.donateText(), "Doa para: ")
        XCTAssertEqual(viewModel.receiveText(), "Recebe de: ")
    }
    
    func testDonateTextWithoutSelectionReturnsDefault() {
        XCTAssertEqual(viewModel.donateText(), "Doa para: ")
    }
    
    func testReceiveTextWithoutSelectionReturnsDefault() {
        XCTAssertEqual(viewModel.receiveText(), "Recebe de: ")
    }
    
    func testClearResultsResetsSelection() {
        viewModel.selectedType(at: 0)
        viewModel.clearResults()
        
        XCTAssertEqual(viewModel.donateText(), "Doa para: ")
    }
}
