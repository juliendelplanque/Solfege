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
	self assert: eNote equals: MusicNote E4.
	self assert: bNote equals: MusicNote B4
]

{ #category : #tests }
MusicNoteTest >> testFlat [
	self assert: cNote flat equals: MusicNote B3.
	self assert: eNote flat equals: MusicNote E4 - 1 semitone.
	self assert: bNote flat equals: MusicNote B4 - 1 semitone.
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
MusicNoteTest >> testSharp [
	self assert: cNote sharp equals: MusicNote C4 + 1 semitone.
	self assert: eNote sharp equals: MusicNote F4.
	self assert: bNote sharp equals: MusicNote C5.
]
