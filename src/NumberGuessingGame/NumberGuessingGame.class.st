"
Game about guessing numbers.
"
Class {
	#name : 'NumberGuessingGame',
	#superclass : 'Object',
	#instVars : [
		'correctNumber',
		'message'
	],
	#category : 'NumberGuessingGame',
	#package : 'NumberGuessingGame'
}

{ #category : 'logical operations' }
NumberGuessingGame >> guess: aNumber [
		message := aNumber == correctNumber ifTrue: 'Win!' ifFalse: (aNumber > correctNumber ifTrue: 'Too high!' ifFalse: 'Too low!' ) 
		
]

{ #category : 'initialization' }
NumberGuessingGame >> initialize [ 
	super initialize.
	correctNumber := 100 atRandom .
]
