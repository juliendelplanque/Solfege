Class {
	#name : #MusicInterval,
	#superclass : #Object,
	#instVars : [
		'semitones'
	],
	#category : #'Solfege-Core'
}

{ #category : #'minor major perfect short' }
MusicInterval class >> M2 [
	^ self majorSecond
]

{ #category : #'minor major perfect short' }
MusicInterval class >> M3 [
	^ self majorThird
]

{ #category : #'minor major perfect short' }
MusicInterval class >> M6 [
	^ self majorSixth
]

{ #category : #'minor major perfect short' }
MusicInterval class >> M7 [
	^ self majorSeventh
]

{ #category : #'minor major perfect short' }
MusicInterval class >> P1 [
	^ self perfectUnison
]

{ #category : #'minor major perfect short' }
MusicInterval class >> P4 [
	^ self perfectFourth
]

{ #category : #'minor major perfect short' }
MusicInterval class >> P5 [
	^ self perfectFifth
]

{ #category : #'minor major perfect short' }
MusicInterval class >> P8 [
	^ self perfectOctave
]

{ #category : #accessing }
MusicInterval class >> fullNameFor: aMusicInterval [
	^ ((Pragma allNamed: 'interval:' in: self class)
			detect: [ :p | (p methodSelector value: self) = aMusicInterval ]) argumentAt: 1
]

{ #category : #'minor major perfect short' }
MusicInterval class >> m2 [
	^ self minorSecond
]

{ #category : #'minor major perfect short' }
MusicInterval class >> m3 [
	^ self minorThird
]

{ #category : #'minor major perfect short' }
MusicInterval class >> m6 [
	^ self minorSixth
]

{ #category : #'minor major perfect short' }
MusicInterval class >> m7 [
	^ self minorSeventh
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> majorSecond [
	<interval: 'Major second'>
	^ self semitones: 2
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> majorSeventh [
	<interval: 'Major seventh'>
	^ self semitones: 11
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> majorSixth [
	<interval: 'Major sixth'>
	^ self semitones: 9
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> majorThird [
	<interval: 'Major third'>
	^ self semitones: 4
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> minorSecond [
	<interval: 'Minor second'>
	^ self semitones: 1
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> minorSeventh [
	<interval: 'Minor seventh'>
	^ self semitones: 10
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> minorSixth [
	<interval: 'Minor sixth'>
	^ self semitones: 8
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> minorThird [
	<interval: 'Minor third'>
	^ self semitones: 3
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> perfectFifth [
	<interval: 'Perfect fifth'>
	^ self semitones: 7
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> perfectFourth [
	<interval: 'Perfect fourth'>
	^ self semitones: 5
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> perfectOctave [
	<interval: 'Perfect octave'>
	^ self semitones: 12
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> perfectUnison [
	<interval: 'Perfect unison'>
	^ self semitones: 0
]

{ #category : #'instance creation' }
MusicInterval class >> semitones: anInteger [
	^ self new
		semitones: anInteger;
		yourself
]

{ #category : #accessing }
MusicInterval class >> shortNameFor: aMusicInterval [
	| pragma senders |
	pragma := (Pragma allNamed: 'interval:' in: self class)
					detect: [ :p | (p methodSelector value: self) = aMusicInterval ].
	senders := pragma methodSelector senders select: [ :method | method methodClass = self class ].
	self assert: (senders size between: 0 and: 1) description: 'There should be either 0 or 1 sender for each long interval name in this class.'.
	^ senders first selector asString
]

{ #category : #'minor major perfect intervals' }
MusicInterval class >> tritone [
	<interval: 'Tritone'>
	^ self semitones: 6
]

{ #category : #arithmetic }
MusicInterval >> * anInteger [
	^ self multiplyBy: anInteger
]

{ #category : #comparing }
MusicInterval >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ semitones = anObject semitones
]

{ #category : #arithmetic }
MusicInterval >> beAddedToMusicNote: aMusicNote [
	^ aMusicNote class semitonesFromC0: (aMusicNote semitonesFromC0 + self semitones)
]

{ #category : #arithmetic }
MusicInterval >> beSubstractedFromMusicNote: aMusicNote [
	^ aMusicNote class semitonesFromC0: (aMusicNote semitonesFromC0 - self semitones)
]

{ #category : #accessing }
MusicInterval >> fullName [
	^ self class fullNameFor: self
]

{ #category : #comparing }
MusicInterval >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ semitones hash
]

{ #category : #arithmetic }
MusicInterval >> multiplyBy: anInteger [
	anInteger isInteger
		ifFalse: [ self
				error: 'A music interval can only be multiplied by a an Integer.' ].
	^ self class semitones: self semitones * anInteger
]

{ #category : #printing }
MusicInterval >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< $(;
		<< self fullName;
		<< ', semitones=';
		<< self semitones;
		<< $)
]

{ #category : #accessing }
MusicInterval >> semitones [
	^ semitones
]

{ #category : #private }
MusicInterval >> semitones: anInteger [
	(anInteger isInteger and: [ anInteger >= 0 ])
		ifFalse: [ 
			self error: 'The number of semitones for a music interval should always be a positive integer.' ].
	semitones := anInteger
]

{ #category : #accessing }
MusicInterval >> shortName [
	^ self class shortNameFor: self
]
