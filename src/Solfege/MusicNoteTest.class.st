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
MusicNoteTest >> testSharp [
	self assert: cNote sharp equals: MusicNote C4 + 1 semitone.
	self assert: eNote sharp equals: MusicNote F4.
	self assert: bNote sharp equals: MusicNote C5.
]
