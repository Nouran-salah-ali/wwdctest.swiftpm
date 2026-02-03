//
//  ZoomVM.swift
//  wwdctest
//
//  Created by nouransalah on 13/08/1447 AH.
//

import Swift
import Foundation
import Combine
@available(iOS 17.0, *)
final class ZoomViewModel: ObservableObject {
    @Published var scale: CGFloat = 1
}

