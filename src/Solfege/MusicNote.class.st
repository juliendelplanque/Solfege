Class {
	#name : #MusicNote,
	#superclass : #Magnitude,
	#traits : 'TInnerPrintable',
	#classTraits : 'TInnerPrintable classTrait',
	#instVars : [
		'semitonesFromC0'
	],
	#category : #'Solfege-Core'
}

{ #category : #'instance creation - simple' }
MusicNote class >> A [
	^ self A4
]

{ #category : #'instance creation' }
MusicNote class >> A0 [
	^ self G0 + 2 semitones
]

{ #category : #'instance creation' }
MusicNote class >> A1 [
	^ self A0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A2 [
	^ self A0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A3 [
	^ self A0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A4 [
	^ self A0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A5 [
	^ self A0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A6 [
	^ self A0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A7 [
	^ self A0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> A8 [
	^ self A0 + 8 perfectOctave
]

{ #category : #'instance creation - simple' }
MusicNote class >> B [
	^ self B4
]

{ #category : #'instance creation' }
MusicNote class >> B0 [
	^ self A0 + 2 semitones
]

{ #category : #'instance creation' }
MusicNote class >> B1 [
	^ self B0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B2 [
	^ self B0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B3 [
	^ self B0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B4 [
	^ self B0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B5 [
	^ self B0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B6 [
	^ self B0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B7 [
	^ self B0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> B8 [
	^ self B0 + 8 perfectOctave
]

{ #category : #'instance creation - simple' }
MusicNote class >> C [
	^ self C4
]

{ #category : #'instance creation' }
MusicNote class >> C0 [
	^ self semitonesFromC0: 0
]

{ #category : #'instance creation' }
MusicNote class >> C1 [
	^ self C0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C2 [
	^ self C0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C3 [
	^ self C0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C4 [
	^ self C0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C5 [
	^ self C0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C6 [
	^ self C0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C7 [
	^ self C0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> C8 [
	^ self C0 + 8 perfectOctave
]

{ #category : #'instance creation - simple' }
MusicNote class >> D [
	^ self D4
]

{ #category : #'instance creation' }
MusicNote class >> D0 [
	^ self C0 + 2 semitones
]

{ #category : #'instance creation' }
MusicNote class >> D1 [
	^ self D0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D2 [
	^ self D0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D3 [
	^ self D0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D4 [
	^ self D0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D5 [
	^ self D0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D6 [
	^ self D0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D7 [
	^ self D0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> D8 [
	^ self D0 + 8 perfectOctave
]

{ #category : #'instance creation - simple' }
MusicNote class >> E [
	^ self E4
]

{ #category : #'instance creation' }
MusicNote class >> E0 [
	^ self D0 + 2 semitones
]

{ #category : #'instance creation' }
MusicNote class >> E1 [
	^ self E0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E2 [
	^ self E0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E3 [
	^ self E0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E4 [
	^ self E0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E5 [
	^ self E0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E6 [
	^ self E0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E7 [
	^ self E0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> E8 [
	^ self E0 + 8 perfectOctave
]

{ #category : #'instance creation - simple' }
MusicNote class >> F [
	^ self F4
]

{ #category : #'instance creation' }
MusicNote class >> F0 [
	^ self E0 + 1 semitone
]

{ #category : #'instance creation' }
MusicNote class >> F1 [
	^ self F0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F2 [
	^ self F0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F3 [
	^ self F0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F4 [
	^ self F0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F5 [
	^ self F0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F6 [
	^ self F0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F7 [
	^ self F0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> F8 [
	^ self F0 + 8 perfectOctave
]

{ #category : #'instance creation - simple' }
MusicNote class >> G [
	^ self G4
]

{ #category : #'instance creation' }
MusicNote class >> G0 [
	^ self F0 + 2 semitones
]

{ #category : #'instance creation' }
MusicNote class >> G1 [
	^ self G0 + 1 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G2 [
	^ self G0 + 2 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G3 [
	^ self G0 + 3 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G4 [
	^ self G0 + 4 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G5 [
	^ self G0 + 5 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G6 [
	^ self G0 + 6 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G7 [
	^ self G0 + 7 perfectOctave
]

{ #category : #'instance creation' }
MusicNote class >> G8 [
	^ self G0 + 8 perfectOctave
]

{ #category : #private }
MusicNote class >> semitonesFromC0: anInteger [
	^ self new
		semitonesFromC0: anInteger;
		yourself
]

{ #category : #arithmetic }
MusicNote >> + anObject [
	^ anObject beAddedToMusicNote: self
]

{ #category : #arithmetic }
MusicNote >> - anObject [
	^ anObject beSubstractedFromMusicNote: self
]

{ #category : #testing }
MusicNote >> < aMagnitude [ 
	"Answer whether the receiver is less than the argument."

	^ self semitonesFromC0 < aMagnitude semitonesFromC0
]

{ #category : #comparing }
MusicNote >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ semitonesFromC0 = anObject semitonesFromC0
]

{ #category : #accessing }
MusicNote >> alternativeName [
	^ self notesAlternativeNames at: (self semitonesFromC0 % self notesAlternativeNames size) + 1
]

{ #category : #'chords - triads' }
MusicNote >> augmentedTriad [
	^ self + (self + #majorThird asMusicInterval) + (self + #minorSixth asMusicInterval)
]

{ #category : #arithmetic }
MusicNote >> beAddedToMusicChord: aMusicChord [
	^ aMusicChord copy
		addNote: self;
		yourself
]

{ #category : #arithmetic }
MusicNote >> beAddedToMusicNote: aMusicNote [
	^ MusicChord notes: { self . aMusicNote }
]

{ #category : #arithmetic }
MusicNote >> beSubstractedFromMusicNote: aMusicNote [
	"Returns the distance between aMusicNote and self as a MusicInterval."
	^ MusicInterval semitones: (aMusicNote semitonesFromC0 - self semitonesFromC0) abs
]

{ #category : #'chords - triads' }
MusicNote >> diminishedTriad [
	^ self + (self + #minorThird asMusicInterval) + (self + #tritone asMusicInterval)
]

{ #category : #accidentals }
MusicNote >> flat [
	^ self - 1 semitone
]

{ #category : #accessing }
MusicNote >> fullAlternativeName [
	^ self alternativeName , self octaveCount asString
]

{ #category : #accessing }
MusicNote >> fullName [
	^ self name , self octaveCount asString
]

{ #category : #comparing }
MusicNote >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ semitonesFromC0 hash
]

{ #category : #printing }
MusicNote >> innerPrintOn: aStream [
	aStream
		<< self name;
		print: self octaveCount
]

{ #category : #'chords - triads' }
MusicNote >> majorTriad [
	^ self + (self + #majorThird asMusicInterval) + (self + #perfectFifth asMusicInterval)
]

{ #category : #'chords - triads' }
MusicNote >> minorTriad [
	^ self + (self + #minorThird asMusicInterval) + (self + #perfectFifth asMusicInterval)
]

{ #category : #accessing }
MusicNote >> name [
	^ self notesNames at: (self semitonesFromC0 % self notesNames size) + 1
]

{ #category : #private }
MusicNote >> notesAlternativeNames [
	^ #('C' 'Db' 'D' 'Eb' 'E' 'F' 'Gb' 'G' 'Ab' 'A' 'Bb' 'B')
]

{ #category : #private }
MusicNote >> notesNames [
	^ #('C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#' 'A' 'A#' 'B')
]

{ #category : #accessing }
MusicNote >> octaveCount [
	^ self semitonesFromC0 // 12
]

{ #category : #'chords - powerchords' }
MusicNote >> powerchord [
	^ self + (self + #perfectFifth asMusicInterval)
]

{ #category : #'chords - powerchords' }
MusicNote >> powerchordWithOctave [
	^ self + (self + #perfectFifth asMusicInterval) + (self + #perfectOctave asMusicInterval)
]

{ #category : #accessing }
MusicNote >> semitonesFromC0 [
	^ semitonesFromC0
]

{ #category : #private }
MusicNote >> semitonesFromC0: anInteger [
	semitonesFromC0 := anInteger
]

{ #category : #accidentals }
MusicNote >> sharp [
	^ self + 1 semitone
]
