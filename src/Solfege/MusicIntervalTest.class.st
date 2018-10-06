Class {
	#name : #MusicIntervalTest,
	#superclass : #TestCase,
	#instVars : [
		'musicInterval'
	],
	#category : #'Solfege-Tests'
}

{ #category : #running }
MusicIntervalTest >> setUp [
	super setUp.
	musicInterval := MusicInterval semitones: 1
]

{ #category : #tests }
MusicIntervalTest >> testBeAddedToMusicInterval [
	self assert: (musicInterval beAddedToMusicInterval: 1 semitone) equals: 2 semitones
]

{ #category : #tests }
MusicIntervalTest >> testBeAddedToMusicNote [
	self assert: (musicInterval beAddedToMusicNote: MusicNote C) equals: MusicNote C sharp.
	
	self assert: (musicInterval beAddedToMusicNote: MusicNote E) equals: MusicNote F.
	
	musicInterval semitones: 3.
	
	self assert: (musicInterval beAddedToMusicNote: MusicNote C) equals: MusicNote D sharp.
	
	self assert: (musicInterval beAddedToMusicNote: MusicNote E) equals: MusicNote G.
]

{ #category : #tests }
MusicIntervalTest >> testBeSubstractedFromMusicInterval [
	self assert: (musicInterval beSubstractedFromMusicInterval: 1 semitone) equals: 0 semitone.
	
	self should: [ musicInterval beSubstractedFromMusicInterval: 0 semitone ] raise: Error
]

{ #category : #tests }
MusicIntervalTest >> testBeSubstractedFromMusicNote [
	self assert: (musicInterval beSubstractedFromMusicNote: MusicNote D) equals: MusicNote C sharp.
	
	self assert: (musicInterval beSubstractedFromMusicNote: MusicNote F) equals: MusicNote E.
	
	musicInterval semitones: 3.
	
	self assert: (musicInterval beSubstractedFromMusicNote: MusicNote D sharp) equals: MusicNote C.
	
	self assert: (musicInterval beSubstractedFromMusicNote: MusicNote G) equals: MusicNote E.
]

{ #category : #tests }
MusicIntervalTest >> testEquals [
	self assert: (MusicInterval semitones: 1) equals: musicInterval.
	
	self deny: (MusicInterval semitones: 2) equals: musicInterval.
]

{ #category : #tests }
MusicIntervalTest >> testFullName [
	self assert: musicInterval fullName equals: 'Minor second'
]

{ #category : #tests }
MusicIntervalTest >> testMultiplyBy [
	self assert: (musicInterval multiplyBy: 3) semitones equals: 3.
	
	musicInterval semitones: 12.
	
	self assert: (musicInterval multiplyBy: 2) semitones equals: 24.
]

{ #category : #tests }
MusicIntervalTest >> testSemitones [
	self should: [ musicInterval semitones: $a ] raise: Error.
	
	self should: [ musicInterval semitones: -1 ] raise: Error.
	
	musicInterval semitones: 0.
	
	self assert: musicInterval semitones equals: 0.
	
	musicInterval semitones: 42.
	
	self assert: musicInterval semitones equals: 42.
]

{ #category : #tests }
MusicIntervalTest >> testShortName [
	self assert: musicInterval shortName equals: 'm2'
]
