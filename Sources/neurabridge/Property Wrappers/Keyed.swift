////
////  File.swift
////  
////
////  Created by Justin Means on 6/5/21.
////
//
//import Foundation
//
//@propertyWrapper
//public struct Keyed<Value> {
//	public var value: Value
//	public var key: String
//	
//	public init(_ key: String, wrappedValue: Value) {
//		self.value = wrappedValue
//		self.key = key
//	}
//	
//	public var wrappedValue: Value {
//		get { value }
//		
//		set {
//			value = newValue
//		}
//	}
//		
//	public var projectedValue: Self {
//		return self
//	}
//}
