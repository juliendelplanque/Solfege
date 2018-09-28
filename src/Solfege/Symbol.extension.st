Extension { #name : #Symbol }

{ #category : #'*Solfege' }
Symbol >> asMusicInterval [
	^ MusicInterval perform: self
]

{ #category : #'*Solfege' }
Symbol >> asMusicNote [
	^ MusicNote perform: self
]
