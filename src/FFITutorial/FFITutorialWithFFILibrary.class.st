Class {
	#name : #FFITutorialWithFFILibrary,
	#superclass : #Object,
	#instVars : [
		'valor'
	],
	#classVars : [
		'Age',
		'MagicNumber'
	],
	#category : #FFITutorial
}

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> abs: anInteger [

	^ self ffiCall: #( int abs #( int anInteger ) )
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> absMagicNumber [

	^ self ffiCall: #( int abs #( int MagicNumber ) )
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> absMinusFortyTwo [

	^ self ffiCall: #( int abs #( -42 ) )
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> absWithAge: n [

	^ self ffiCall: #( Age abs #( Age n ) )
]

{ #category : #accessing }
FFITutorialWithFFILibrary class >> ffiLibrary [

^ MyLibC 
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> free: anExternalAddress [
	^ self ffiCall: #( void free #( void * anExternalAddress ) )
]

{ #category : #initialization }
FFITutorialWithFFILibrary class >> initialize [

	MagicNumber := -42.
	Age := #uint
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> malloc: aSize [
	^ self ffiCall: #( void * malloc #( size_t aSize ) )
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> realloc: anExternalAddress toSize: aSize [
	^ self ffiCall:
		  #( void * realloc #( void * anExternalAddress , size_t aSize ) )
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> ticksSinceStart [

	^ self ffiCall: #( uint clock #(  ) )
]

{ #category : #'as yet unclassified' }
FFITutorialWithFFILibrary class >> time [

	^ self ffiCall: #( uint time #( NULL ) )
]

{ #category : #initialization }
FFITutorialWithFFILibrary >> absValor [

^ self ffiCall: #( int abs #( int valor ) )
]

{ #category : #accessing }
FFITutorialWithFFILibrary >> ffiLibrary [

	^ MyLibC
]

{ #category : #initialization }
FFITutorialWithFFILibrary >> initialize [

	valor := -10.
]
