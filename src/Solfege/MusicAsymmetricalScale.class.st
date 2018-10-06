Class {
	#name : #MusicAsymmetricalScale,
	#superclass : #MusicScale,
	#instVars : [
		'backwardIntervals'
	],
	#category : #'Solfege-Core'
}

{ #category : #'instance creation' }
MusicAsymmetricalScale class >> tonic: aMusicNote forwardIntervals: forwardIntervals backwardIntervals: backwardIntervals [
	^ self new
		tonic: aMusicNote;
		forwardIntervals:forwardIntervals;
		backwardIntervals: backwardIntervals;
		yourself
]

{ #category : #accessing }
MusicAsymmetricalScale >> backwardIntervals [
	^ backwardIntervals
]

{ #category : #accessing }
MusicAsymmetricalScale >> backwardIntervals: anObject [
	backwardIntervals := anObject
]
