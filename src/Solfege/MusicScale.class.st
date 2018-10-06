Class {
	#name : #MusicScale,
	#superclass : #Object,
	#instVars : [
		'tonic',
		'intervals'
	],
	#category : #'Solfege-Core'
}

{ #category : #'instance creation' }
MusicScale class >> harmonicMinor: aMusicNote [
	| naturalMinorIntervals |
	naturalMinorIntervals := (self naturalMinor: aMusicNote) intervals.
	^ self
		tonic: aMusicNote
		intervals: (naturalMinorIntervals
						at: 6 put: (naturalMinorIntervals at: 6) + 1 semitone;
						yourself)
]

{ #category : #'instance creation' }
MusicScale class >> major: aMusicNote [
	^ self tonic: aMusicNote intervals: { 
		1  tone.
		1  tone.
		1  semitone.
		1  tone.
		1  tone.
		1  tone.
		1  semitone }
]

{ #category : #'instance creation' }
MusicScale class >> melodicMinor: aMusicNote [
	| naturalMinorIntervals |
	naturalMinorIntervals := (self naturalMinor: aMusicNote) intervals.
	^ MusicAsymmetricalScale
		tonic: aMusicNote
		forwardIntervals: (naturalMinorIntervals
									at: 5 put: (naturalMinorIntervals at: 5) + 1 semitone;
									at: 6 put: (naturalMinorIntervals at: 6) + 1 semitone;
									yourself)
		backwardIntervals: naturalMinorIntervals reversed
]

{ #category : #'instance creation' }
MusicScale class >> naturalMinor: aMusicNote [
	^ self tonic: aMusicNote intervals: { 
		1  tone.
		1  semitone.
		1  tone.
		1  tone.
		1  semitone.
		1  tone.
		1  tone }
]

{ #category : #'instance creation' }
MusicScale class >> tonic: aMusicNote intervals: aCollectionOfMusicIntervals [
	^ self new
		tonic: aMusicNote;
		intervals: aCollectionOfMusicIntervals;
		yourself
]

{ #category : #accessing }
MusicScale >> backwardIntervals [
	^ self forwardIntervals reversed
]

{ #category : #accessing }
MusicScale >> backwardIntervals: aObject [
	self error: 'AMusicScale''s backward interval is the forward interval reversed. It should not be set thus.'
]

{ #category : #accessing }
MusicScale >> dominant [
	^ self noteAt: 5
]

{ #category : #accessing }
MusicScale >> forwardIntervals [
	^ self intervals
]

{ #category : #accessing }
MusicScale >> forwardIntervals: anObject [
	self intervals: anObject
]

{ #category : #accessing }
MusicScale >> intervals [
	^ intervals
]

{ #category : #accessing }
MusicScale >> intervals: anObject [
	intervals := anObject
]

{ #category : #accessing }
MusicScale >> leadingTone [
	^ self noteAt: 7
]

{ #category : #accessing }
MusicScale >> mediant [
	^ self noteAt: 3
]

{ #category : #accessing }
MusicScale >> noteAt: anIndex [
	^ self tonicAddedToIntervalUpTo: anIndex - 1
]

{ #category : #accessing }
MusicScale >> subdominant [
	^ self noteAt: 4
]

{ #category : #accessing }
MusicScale >> submediant [
	^ self noteAt: 6
]

{ #category : #accessing }
MusicScale >> subtonic [
	"In case of a minor scale, seventh note is called the subtonic (instead of teh leading tone in major scale)."
	^ self noteAt: 7
]

{ #category : #accessing }
MusicScale >> supertonic [
	^ self noteAt: 2
]

{ #category : #accessing }
MusicScale >> tonic [
	^ tonic
]

{ #category : #accessing }
MusicScale >> tonic: anObject [
	tonic := anObject
]

{ #category : #private }
MusicScale >> tonicAddedToIntervalUpTo: index [
	^ self tonic + ((1 to: index) sum: [ :i | self intervals at: i ])
]
