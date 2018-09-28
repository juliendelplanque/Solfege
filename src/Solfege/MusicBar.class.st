Class {
	#name : #MusicBar,
	#superclass : #Object,
	#instVars : [
		'score',
		'timeSignature',
		'key'
	],
	#category : #'Solfege-Core'
}

{ #category : #accessing }
MusicBar >> key [
	"If the key was overrided in myself, returns it, else returns the one from the score I belong to."
	^ key ifNil: [ self score key ]
]

{ #category : #accessing }
MusicBar >> key: anObject [
	key := anObject
]

{ #category : #accessing }
MusicBar >> score [
	^ score
]

{ #category : #accessing }
MusicBar >> score: anObject [
	score := anObject
]

{ #category : #accessing }
MusicBar >> timeSignature [
	"If the time signature was overrided in myself, returns it, else returns the one from the score I belong to."
	^ timeSignature ifNil: [ self score timeSignature ]
]

{ #category : #accessing }
MusicBar >> timeSignature: anObject [
	timeSignature := anObject
]
