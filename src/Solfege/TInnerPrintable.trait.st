Trait {
	#name : #TInnerPrintable,
	#category : #'Solfege-Core'
}

{ #category : #printing }
TInnerPrintable >> innerPrintOn: aStream [
	self explicitRequirement
]

{ #category : #printing }
TInnerPrintable >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< $(.
	self innerPrintOn: aStream.
	aStream
		<< $)
]
