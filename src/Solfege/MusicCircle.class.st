Class {
	#name : #MusicCircle,
	#superclass : #Object,
	#category : #'Solfege-Core'
}

{ #category : #'instance creation' }
MusicCircle class >> ofFifths [
	^ MusicCircleOfFifths new
]

{ #category : #'instance creation' }
MusicCircle class >> ofFourths [
	^ MusicCircleOfFourths new
]

{ #category : #private }
MusicCircle >> baseNote [
	^ MusicNote C
]

{ #category : #private }
MusicCircle >> nextNote: aMusicNote [
	"Returns the next note required to generate the circle."
	^ self subclassResponsibility
]

{ #category : #accessing }
MusicCircle >> notes [
	| notes |
	notes := (Array new: 7)
					at: 1 put: #C4 asMusicNote;
					yourself.
	^ (2 to: 7)
		inject: notes
		into: [ :col :i |
			col
				at: i put: (self nextNote: (col at: i - 1));
				yourself ]
]
