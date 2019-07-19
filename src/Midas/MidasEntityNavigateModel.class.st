Class {
	#name : #MidasEntityNavigateModel,
	#superclass : #Object,
	#instVars : [
		'selector',
		'name'
	],
	#category : #'Midas-context'
}

{ #category : #accessing }
MidasEntityNavigateModel >> methodSelector [
	^ selector
]

{ #category : #accessing }
MidasEntityNavigateModel >> name [
	^ name
]

{ #category : #accessing }
MidasEntityNavigateModel >> name: anObject [
	name := anObject
]

{ #category : #accessing }
MidasEntityNavigateModel >> selector [
	^ selector
]

{ #category : #accessing }
MidasEntityNavigateModel >> selector: anObject [
	selector := anObject
]