Extension { #name : #SequenceableCollection }

{ #category : #'*Solfege' }
SequenceableCollection >> wrappedShiftLeftBy: anInteger [
	"Shifts the Sequenceable collection on the right by anInteger count.
		(#(1 2 3) wrappedShiftLeftBy: 1) >>> #(2 3 1)
		(#(1 2 3) wrappedShiftLeftBy: 2) >>> #(3 1 2)
		(#(1 2 3) wrappedShiftLeftBy: 3) >>> #(1 2 3)
		(#(1 2 3) wrappedShiftLeftBy: 4) >>> #(2 3 1)
	"
	| realShift |
	(anInteger isInteger and: [ anInteger >= 0 ])
		ifFalse: [ self error: 'The argument can only be am integer greater or equal to zero.' ].
	realShift := ((anInteger - 1) % self size) + 1.
	^ self species new: self size streamContents: [ :s |
		self from: realShift + 1 to: self size do: [ :item |
			s nextPut: item ].
		self from: 1 to: realShift do: [ :item |
			s nextPut: item ] ]
]
