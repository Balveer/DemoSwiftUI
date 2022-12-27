//
//  ProductListModel.swift
//  DemoSwiftUI
//
//  Created by Sudhir Saini on 27/12/22.
//

import Foundation

class ListAPICall:ObservableObject {
    @Published var productListArray: [Product] = []
    func apiHit(){
    }
}
