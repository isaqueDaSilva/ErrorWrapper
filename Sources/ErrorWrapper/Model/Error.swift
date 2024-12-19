//
//  Error.swift
//  ErrorWrapper
//
//  Created by Isaque da Silva on 12/19/24.
//

import Foundation

/// A Representation data of an error that will be occur in some task execution.
public struct Error: Sendable {
    public var title: String
    public var descrition: String
    
    public init(title: String, descrition: String) {
        self.title = title
        self.descrition = descrition
    }
}
