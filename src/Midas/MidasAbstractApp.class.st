"
Abstract app. Apps are specialized Spec visualization. All app have a context which is the model of the visualization
"
Class {
	#name : #MidasAbstractApp,
	#superclass : #ComposablePresenter,
	#instVars : [
		'context'
	],
	#category : #'Midas-apps'
}

{ #category : #accessing }
MidasAbstractApp >> context [
	^ context
]

{ #category : #accessing }
MidasAbstractApp >> context: aContext [
	context := aContext.
	aContext addListener: self.
	self update: aContext 
]

{ #category : #accessing }
MidasAbstractApp >> mooseModel [
	^ context mooseModel
]

{ #category : #display }
MidasAbstractApp >> open [
	self openWithSpec
]

{ #category : #notifications }
MidasAbstractApp >> update: uiModel [
	self subclassResponsibility 
]