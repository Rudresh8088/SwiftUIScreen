//
//  File.swift
//  NewFirstPage
//
//  Created by Rudresh Uppin on 26/09/22.
//

import Foundation
import UIKit
import SwiftUI

class MyColorViewModel:ObservableObject{
    //Change to UIColor the types have to match
    @Published var selectedColor: UIColor = #colorLiteral(red: 0.9762545228, green: 0.6769368052, blue: 0.6951140761, alpha: 1)
    @Published var whiteColor: UIColor = #colorLiteral(red: 0.9682741117, green: 0.9682741117, blue: 0.9682741117, alpha: 1)
}
