Class {
	#name : #MusicCircleOfFifths,
	#superclass : #MusicCircle,
	#category : #'Solfege-Core'
}

{ #category : #private }
MusicCircleOfFifths >> nextNote: aMusicNote [
	^ aMusicNote + #perfectFifth asMusicInterval
]
