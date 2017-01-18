private
generateReferenceAdderFrom: anXMINode
	|type typeAdd|
	type := (anXMINode attributes at: 'eType' ifAbsent: [ 'Object' ]) copyAfterLast: $/.
	typeAdd := (type first isVowel ifTrue: ['an'] ifFalse: ['a']), type.
	stream cr;cr.
	stream nextPutAll: ('!{1} methodsFor: ''operating'' stamp: '' 1/17/2017 03:20:35''!
add{2}: {4}
	"Adds the given {5} to the receivers {3}."
	
	{3} add: {4}! !' format: { theClass. anXMINode name. self nameFromReferenceNode: anXMINode. typeAdd. type })