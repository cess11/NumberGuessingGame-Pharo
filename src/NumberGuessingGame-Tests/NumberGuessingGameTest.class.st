Class {
	#name : 'NumberGuessingGameTest',
	#superclass : 'TestCase',
	#category : 'NumberGuessingGame-Tests',
	#package : 'NumberGuessingGame-Tests'
}

{ #category : 'tests' }
NumberGuessingGameTest >> testGuess [
	| g |
	g := NumberGuessingGame new.
	g guess: 12.
	self assert: (g message) class equals: ByteString
]

{ #category : 'tests' }
NumberGuessingGameTest >> testNewGame [
	| g | 
	g := NumberGuessingGame new.
	self assert: (g class) equals: NumberGuessingGame
]

{ #category : 'tests' }
NumberGuessingGameTest >> testNewGameInitialize [
	| g | 
	g := NumberGuessingGame new.
	self assert: (g correctNumber) class equals: SmallInteger
]
