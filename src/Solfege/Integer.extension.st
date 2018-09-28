Extension { #name : #Integer }

{ #category : #'*Solfege' }
Integer >> perfectOctave [
	^ self perfectOctaves
]

{ #category : #'*Solfege' }
Integer >> perfectOctaves [
	^ #perfectOctave asMusicInterval * self
]

{ #category : #'*Solfege' }
Integer >> semitone [
	^ self semitones
]

{ #category : #'*Solfege' }
Integer >> semitones [
	^ MusicInterval semitones: self
]

{ #category : #'*Solfege' }
Integer >> tone [
	^ self tones
]

{ #category : #'*Solfege' }
Integer >> tones [
	^ self semitones * 2
]
