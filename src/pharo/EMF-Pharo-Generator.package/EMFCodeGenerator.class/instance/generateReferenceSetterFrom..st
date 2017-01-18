private
generateReferenceSetterFrom: anXMINode
	|type typeAdd|
	type := (anXMINode attributes at: 'eType' ifAbsent: [ 'Object' ]) copyAfterLast: $/.
	typeAdd := (type first isVowel ifTrue: ['an'] ifFalse: ['a']), type.
	stream cr;cr.
	stream nextPutAll: ('!{1} methodsFor: ''accessing'' stamp: '' 1/17/2017 03:20:35''!
{2}: aCollection
	"Sets the {2} of the receiver to the given collection."
	
	{2} := aCollection! !' format: { theClass. self nameFromReferenceNode: anXMINode. })