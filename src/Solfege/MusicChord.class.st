Class {
	#name : #MusicChord,
	#superclass : #Object,
	#traits : 'TInnerPrintable',
	#classTraits : 'TInnerPrintable classTrait',
	#instVars : [
		'notes'
	],
	#category : #'Solfege-Core'
}

{ #category : #'instance creation' }
MusicChord class >> notes: aCollectionOfNotes [
	| chord |
	chord := self new.
	aCollectionOfNotes do: [ :note |
		chord addNote: note ].
	^ chord
]

{ #category : #arithmetic }
MusicChord >> + anObject [
	^ anObject beAddedToMusicChord: self
]

{ #category : #comparing }
MusicChord >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ notes hasEqualElements: anObject notes
]

{ #category : #adding }
MusicChord >> addNote: aMusicNote [
	notes add: aMusicNote
]

{ #category : #comparing }
MusicChord >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ notes hash
]

{ #category : #initialization }
MusicChord >> initialize [
	super initialize.
	notes := SortedCollection sortBlock: [ :a :b | a < b ]
]

{ #category : #printing }
MusicChord >> innerPrintOn: aStream [
	self notes
		do: [ :note | note innerPrintOn: aStream ]
		separatedBy: [ aStream << ' + ' ]
]

{ #category : #accessing }
MusicChord >> notes [
	^ notes
]
