Class {
	#name : #MusicNoteTest,
	#superclass : #TestCase,
	#instVars : [
		'cNote',
		'eNote',
		'bNote'
	],
	#category : #'Solfege-Tests'
}

{ #category : #running }
MusicNoteTest >> setUp [
	super setUp.
	cNote := MusicNote C4.
	eNote := MusicNote E4.
	bNote := MusicNote B4
]

{ #category : #tests }
MusicNoteTest >> testAlternativeName [
	self assert: cNote alternativeName equals: 'C'.
	self assert: eNote alternativeName equals: 'E'.
	self assert: bNote alternativeName equals: 'B'.
	
	self assert: eNote flat alternativeName equals: 'Eb'.
	self assert: bNote flat alternativeName equals: 'Bb'
]

{ #category : #tests }
MusicNoteTest >> testBeAddedToMusicChord [
	| expected |
	expected := MusicChord notes: { cNote . eNote . bNote }.
	
	self
		assert: (cNote beAddedToMusicChord: (MusicChord notes: { eNote . bNote }))
		equals: expected
]

{ #category : #tests }
MusicNoteTest >> testBeAddedToMusicNote [
	self
		assert: (cNote beAddedToMusicNote: bNote)
		equals: (MusicChord notes: { cNote . bNote })
]

{ #category : #tests }
MusicNoteTest >> testBeSubstractedFromMusicNote [
	self assert: (cNote beSubstractedFromMusicNote: MusicNote C5) equals: 1 perfectOctave.
	self assert: (cNote beSubstractedFromMusicNote: MusicNote C3) equals: 1 perfectOctave.
	self assert: (cNote beSubstractedFromMusicNote: MusicNote C4) equals: 0 semitones.
	
	self assert: (bNote beSubstractedFromMusicNote: cNote) equals: 11 semitones.
	
	self assert: (eNote beSubstractedFromMusicNote: cNote) equals: 4 semitones
]

{ #category : #tests }
MusicNoteTest >> testEquals [
	self assert: cNote equals: MusicNote C4.
	self deny: cNote = MusicNote C3.
	
	self assert: eNote equals: MusicNote E4.
	self deny: cNote = MusicNote E5.
	
	self assert: bNote equals: MusicNote B4.
	self deny: cNote = MusicNote B0.
]

{ #category : #tests }
MusicNoteTest >> testFlat [
	self assert: cNote flat equals: MusicNote B3.
	self assert: eNote flat equals: MusicNote E4 - 1 semitone.
	self assert: bNote flat equals: MusicNote B4 - 1 semitone.
]

{ #category : #tests }
MusicNoteTest >> testFullAlternativeName [
	self assert: cNote fullAlternativeName equals: 'C4'.
	self assert: eNote fullAlternativeName equals: 'E4'.
	self assert: bNote fullAlternativeName equals: 'B4'.
	
	self assert: eNote flat fullAlternativeName equals: 'Eb4'.
	self assert: bNote flat fullAlternativeName equals: 'Bb4'.
	
	self assert: MusicNote E0 fullAlternativeName equals: 'E0'.
	self assert: MusicNote B8 flat fullAlternativeName equals: 'Bb8'.
]

{ #category : #tests }
MusicNoteTest >> testFullName [
	self assert: cNote fullName equals: 'C4'.
	self assert: eNote fullName equals: 'E4'.
	self assert: bNote fullName equals: 'B4'.
	
	self assert: eNote flat fullName equals: 'D#4'.
	self assert: bNote flat fullName equals: 'A#4'.
	
	self assert: MusicNote E0 fullName equals: 'E0'.
	self assert: MusicNote B8 flat fullName equals: 'A#8'.
]

{ #category : #tests }
MusicNoteTest >> testName [
	self assert: cNote name equals: 'C'.
	self assert: eNote name equals: 'E'.
	self assert: bNote name equals: 'B'.
	
	self assert: eNote flat name equals: 'D#'.
	self assert: bNote flat name equals: 'A#'
]

{ #category : #tests }
MusicNoteTest >> testOctaveCount [
	self assert: MusicNote C0 octaveCount equals: 0.
	self assert: MusicNote D0 octaveCount equals: 0.
	self assert: MusicNote E0 octaveCount equals: 0.
	self assert: MusicNote F0 octaveCount equals: 0.
	self assert: MusicNote G0 octaveCount equals: 0.
	self assert: MusicNote A0 octaveCount equals: 0.
	self assert: MusicNote B0 octaveCount equals: 0.
	
	self assert: MusicNote C4 octaveCount equals: 4.
	self assert: MusicNote D4 octaveCount equals: 4.
	self assert: MusicNote E4 octaveCount equals: 4.
	self assert: MusicNote F4 octaveCount equals: 4.
	self assert: MusicNote G4 octaveCount equals: 4.
	self assert: MusicNote A4 octaveCount equals: 4.
	self assert: MusicNote B4 octaveCount equals: 4.
	
	self assert: MusicNote C8 octaveCount equals: 8.
	self assert: MusicNote D8 octaveCount equals: 8.
	self assert: MusicNote E8 octaveCount equals: 8.
	self assert: MusicNote F8 octaveCount equals: 8.
	self assert: MusicNote G8 octaveCount equals: 8.
	self assert: MusicNote A8 octaveCount equals: 8.
	self assert: MusicNote B8 octaveCount equals: 8.
]

{ #category : #tests }
MusicNoteTest >> testPowerchord [
	self assert: cNote powerchord equals: (MusicChord notes: { MusicNote C4 . MusicNote G4 }).
	
	self assert: eNote powerchord equals: (MusicChord notes: { MusicNote E4 . MusicNote B4 }).
	
	self assert: bNote powerchord equals: (MusicChord notes: { MusicNote B4 . MusicNote F5 sharp }).
]

{ #category : #tests }
MusicNoteTest >> testPowerchordWithOctave [
	self
		assert: cNote powerchordWithOctave
		equals: (MusicChord notes: { MusicNote C4 . MusicNote G4 . MusicNote C5 }).
	
	self
		assert: eNote powerchordWithOctave
		equals: (MusicChord notes: { MusicNote E4 . MusicNote B4 . MusicNote E5 }).
	
	self
		assert: bNote powerchordWithOctave
		equals: (MusicChord notes: { MusicNote B4 . MusicNote F5 sharp . MusicNote B5 }).
]

{ #category : #tests }
MusicNoteTest >> testSharp [
	self assert: cNote sharp equals: MusicNote C4 + 1 semitone.
	self assert: eNote sharp equals: MusicNote F4.
	self assert: bNote sharp equals: MusicNote C5.
]
