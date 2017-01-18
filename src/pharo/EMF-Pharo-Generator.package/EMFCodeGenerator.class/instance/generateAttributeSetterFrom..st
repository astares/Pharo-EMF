private
generateAttributeSetterFrom: anXMINode
	|type typeAdd|
	type := (anXMINode attributes at: 'eType' ifAbsent: [ 'Object' ]) copyAfterLast: $/.
	typeAdd := (type first isVowel ifTrue: ['an'] ifFalse: ['a']), type.
	stream cr;cr.
	stream nextPutAll: ('!{1} methodsFor: ''accessing'' stamp: '' 1/17/2017 03:20:35''!
{2}: {3}
	"Sets the {2} of the receiver to the given {4}."
	
	{2} := {3}! !' format: { theClass. anXMINode name uncapitalized. typeAdd. type })