Class {
	#name : #FFITutorialWithAliases,
	#superclass : #Object,
	#pools : [
		'FFITutorialTypes'
	],
	#category : #FFITutorial
}

{ #category : #initialization }
FFITutorialWithAliases class >> abs: n [

	^ self ffiCall: #( Age abs #( Age n ) )
]

{ #category : #initialization }
FFITutorialWithAliases class >> ffiLibrary [

	^ MyLibC
]
