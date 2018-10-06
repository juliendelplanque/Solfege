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
MusicScale class >> intervals: aCollectionOfMusicIntervals [
	^ self new
		intervals: aCollectionOfMusicIntervals;
		yourself
]

{ #category : #accessing }
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
MusicScale class >> tonic: aMusicNote intervals: aCollectionOfMusicIntervals [
	^ self new
		tonic: aMusicNote;
		intervals: aCollectionOfMusicIntervals;
		yourself
]

{ #category : #accessing }
MusicScale >> dominant [
	^ self noteAt: 5
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
MusicScale >> superTonic [
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
