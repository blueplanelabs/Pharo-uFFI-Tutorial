Class {
	#name : #FFITutorial,
	#superclass : #Object,
	#category : #FFITutorial
}

{ #category : #'as yet unclassified' }
FFITutorial class >> ticksSinceStart [
^ self ffiCall: #( uint clock() ) library: 'libc.dylib'
]

{ #category : #'as yet unclassified' }
FFITutorial class >> time [

 ^ self ffiCall: #(uint time #(NULL)) library: MyLibC 
]
