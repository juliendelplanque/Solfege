Class {
	#name : #MusicCircleOfFourths,
	#superclass : #MusicCircle,
	#category : #'Solfege-Core'
}

{ #category : #private }
MusicCircleOfFourths >> nextNote: aMusicNote [
	^ aMusicNote - #perfectFourth asMusicInterval
]
