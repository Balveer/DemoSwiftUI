//
//  APITestCase.swift
//  DemoSwiftUITests
//
//  Created by Sudhir Saini on 27/12/22.
//

import XCTest
@testable import DemoSwiftUI

class APITestCase: XCTestCase {
    func testApiLoad(){
        Api().loadData { (productss) in
            XCTAssertNotNil(productss)
            //XCTAssertEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>)
            DispatchQueue.main.async {
            print(productss)
            }

        }
    }

}
