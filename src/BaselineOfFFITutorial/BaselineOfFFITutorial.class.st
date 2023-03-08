Class {
	#name : #BaselineOfFFITutorial,
	#superclass : #BaselineOf,
	#category : #BaselineOfFFITutorial
}

{ #category : #baselines }
BaselineOfFFITutorial >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			package: #'FFITutorial'.
		spec
			group: 'default' with: #( 'FFITutorial' ) ]
]
