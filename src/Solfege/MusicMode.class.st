Class {
	#name : #MusicMode,
	#superclass : #Object,
	#instVars : [
		'intervals'
	],
	#category : #'Solfege-Core'
}

{ #category : #'diatonic modes' }
MusicMode class >> A [
	^ self intervals: (self C intervals wrappedShiftLeftBy: 5)
]

{ #category : #'diatonic modes' }
MusicMode class >> B [
	^ self intervals: (self C intervals wrappedShiftLeftBy: 6)
]

{ #category : #'diatonic modes' }
MusicMode class >> C [
	^ self intervals: { 
		1 tone .
		1 tone .
		1 semitone .
		1 tone .
		1 tone .
		1 tone .
		1 semitone }
]

{ #category : #'diatonic modes' }
MusicMode class >> D [
	^ self intervals: (self C intervals wrappedShiftLeftBy: 1)
]

{ #category : #'diatonic modes' }
MusicMode class >> E [
	^ self intervals: (self C intervals wrappedShiftLeftBy: 2)
]

{ #category : #'diatonic modes' }
MusicMode class >> F [
	^ self intervals: (self C intervals wrappedShiftLeftBy: 3)
]

{ #category : #'diatonic modes' }
MusicMode class >> G [
	^ self intervals: (self C intervals wrappedShiftLeftBy: 4)
]

{ #category : #'instance creation' }
MusicMode class >> intervals: aCollectionOfMusicIntervals [
	^ self new
		intervals: aCollectionOfMusicIntervals;
		yourself
]

{ #category : #accessing }
MusicMode >> intervals [
	^ intervals
]

{ #category : #accessing }
MusicMode >> intervals: anObject [
	intervals := anObject
]
