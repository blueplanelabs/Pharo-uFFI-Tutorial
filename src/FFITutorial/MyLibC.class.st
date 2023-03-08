Class {
	#name : #MyLibC,
	#superclass : #FFILibrary,
	#category : #FFITutorial
}

{ #category : #'accessing - platform' }
MyLibC >> macModuleName [

	^ 'libc.dylib'
]

{ #category : #'accessing - platform' }
MyLibC >> unixModuleName [ 

^ 'libc.so.6'
]

{ #category : #'accessing - platform' }
MyLibC >> win32ModuleName [
"While this is not a proper 'libc', MSVCRT has the functions we
need here."
    ^ 'msvcrt.dll'
]
