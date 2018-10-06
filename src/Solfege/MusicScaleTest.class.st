Class {
	#name : #MusicScaleTest,
	#superclass : #TestCase,
	#instVars : [
		'scale'
	],
	#category : #'Solfege-Tests'
}

{ #category : #running }
MusicScaleTest >> setUp [
	super setUp.
	scale := MusicScale major: MusicNote C4
]

{ #category : #tests }
MusicScaleTest >> testDominant [
	self assert: scale dominant equals: MusicNote G4
]

{ #category : #tests }
MusicScaleTest >> testLeadingTone [
	self assert: scale leadingTone equals: MusicNote B4
]

{ #category : #tests }
MusicScaleTest >> testMediant [
	self assert: scale mediant equals: MusicNote E4
]

{ #category : #tests }
MusicScaleTest >> testSubdominant [
	self assert: scale subdominant equals: MusicNote F4
]

{ #category : #tests }
MusicScaleTest >> testSubmediant [
	self assert: scale submediant equals: MusicNote A4
]

{ #category : #tests }
MusicScaleTest >> testSuperTonic [
	self assert: scale superTonic equals: MusicNote D4
]

{ #category : #tests }
MusicScaleTest >> testTonic [
	self assert: scale tonic equals: MusicNote C4
]
