Class {
	#name : #SequenceableCollectionExtensionsTest,
	#superclass : #TestCase,
	#category : #'Solfege-Tests'
}

{ #category : #tests }
SequenceableCollectionExtensionsTest >> testWrappedShiftLeftBy [
	self assert: (#(1 2 3) wrappedShiftLeftBy: 1) equals: #(2 3 1).
	
	self assert: (#(1 2 3) wrappedShiftLeftBy: 2) equals: #(3 1 2).
	
	self assert: (#(1 2 3) wrappedShiftLeftBy: 3) equals: #(1 2 3).
	
	self assert: (#(1 2 3) wrappedShiftLeftBy: 4) equals: #(2 3 1).
	
	self assert: (#(1 2 3) wrappedShiftLeftBy: 0) equals: #(1 2 3).
	
	self should: [ #(1 2 3) wrappedShiftLeftBy: -1 ] raise: Error
]
