"
An app to set a tag on selected entities
"
Class {
	#name : #MidasAppTag,
	#superclass : #MidasAbstractApp,
	#instVars : [
		'entities',
		'newTag',
		'tags'
	],
	#category : #'Midas-apps'
}

{ #category : #specs }
MidasAppTag class >> defaultSpec [
	^ SpecPanedLayout newHorizontal
		add: #entities;
		add:
			(SpecBoxLayout newVertical
				add: 'New tag named: '
					withConstraints: [ :constraints | constraints height: self defaultFont height ];
				add: #newTag
					withConstraints: [ :constraints | constraints height: self toolbarHeight ];
				add: ''
					withConstraints: [ :constraints | constraints height: self defaultFont height ];
				add: 'Existing tags: '
					withConstraints: [ :constraints | constraints height: self defaultFont height ];
				add: #tags);
		yourself
]

{ #category : #specs }
MidasAppTag class >> runMe [
	<script>
	self new openWithSpec
]

{ #category : #accessing }
MidasAppTag >> entities [
	^ entities
]

{ #category : #initialization }
MidasAppTag >> initializeWidgets [
	super initializeWidgets.
	entities := (self instantiate: ListPresenter)
		displayBlock: [ :item | item name ];
		icons: [ :item | item mooseIcon ];
		sortingBlock: [ :a :b | a name < b name ];
		yourself.
		newTag := self newTextInput.
	tags := self instantiate: ListPresenter
]

{ #category : #accessing }
MidasAppTag >> newTag [
	^newTag
]

{ #category : #accessing }
MidasAppTag >> tags [
	^ tags
]

{ #category : #api }
MidasAppTag >> title [
	^ 'MIDAS Tag'
]

{ #category : #notifications }
MidasAppTag >> updateModel: aMooseModel [
	self shouldNotImplement
]

{ #category : #notifications }
MidasAppTag >> updateStrongFocus: newFocus [
	entities items: newFocus
]

{ #category : #notifications }
MidasAppTag >> updateWeakFocus: newFocus [
	self shouldNotImplement 

	
]
