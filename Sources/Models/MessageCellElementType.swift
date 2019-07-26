//
//  MessageCellElementType.swift
//  MessageKit
//
//  Created by hiroaki muronaka on 2019/07/26.
//  Copyright © 2019 MessageKit. All rights reserved.
//

import Foundation

public enum MessageCellElementType: Hashable {
    
    case message
    case avatar
    case topLabel
    case bottomLabel
    case messageTopLabel
    case messageBottomLabel
    case accessoryView
    case background
    
    ///The hashValue of the `DetectorType` so we can conform to `Hashable` and be sorted.
    public func hash(into: inout Hasher) {
        into.combine(toInt())
    }
    
    /// Return an 'Int' value for each `DetectorType` type so `DetectorType` can conform to `Hashable`
    private func toInt() -> Int {
        switch self {
        case .message: return 0
        case .avatar: return 1
        case .topLabel: return 2
        case .bottomLabel: return 3
        case .messageTopLabel: return 4
        case .messageBottomLabel: return 5
        case .accessoryView: return 6
        case .background: return 7
        }
    }
}
