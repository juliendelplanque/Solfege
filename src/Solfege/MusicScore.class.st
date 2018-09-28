Class {
	#name : #MusicScore,
	#superclass : #Object,
	#instVars : [
		'timeSignature',
		'key',
		'bars'
	],
	#category : #'Solfege-Core'
}

{ #category : #accessing }
MusicScore >> bars [
	^ bars
]

{ #category : #accessing }
MusicScore >> bars: anObject [
	bars := anObject
]

{ #category : #accessing }
MusicScore >> key [
	^ key
]

{ #category : #accessing }
MusicScore >> key: anObject [
	key := anObject
]

{ #category : #accessing }
MusicScore >> timeSignature [
	^ timeSignature
]

{ #category : #accessing }
MusicScore >> timeSignature: anObject [
	timeSignature := anObject
]
