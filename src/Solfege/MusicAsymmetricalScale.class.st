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
		ascendingIntervals:forwardIntervals;
		descendingIntervals: backwardIntervals;
		yourself
]

{ #category : #accessing }
MusicAsymmetricalScale >> descendingIntervals [
	^ backwardIntervals
]

{ #category : #accessing }
MusicAsymmetricalScale >> descendingIntervals: anObject [
	backwardIntervals := anObject
]
