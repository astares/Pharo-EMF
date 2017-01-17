private
exportClassFor: aXMINode 
 
	| superTypeName superType   category |
	superTypeName := aXMINode attributes at: 'eSuperTypes' ifAbsent: [ '#//Pharo/Object'].
	superType := superTypeName copyAfterLast: $/.
	theClass := aXMINode name.
	self findAttributesFor: aXMINode.
 	 
	category := package , '-' ,tag.
	stream cr; nextPutAll: ('{1} subclass: #{2}' format: { superType. theClass }).
	stream cr;tab; nextPutAll: 'instanceVariableNames: '''.
	
	attributes do: [:attr | stream nextPutAll: attr name ] separatedBy: [ stream space ].
	stream nextPutAll: ''''.
	stream cr;tab; nextPutAll: 'classVariableNames: '''''.
	stream cr;tab; nextPutAll: ('package: ''{1}''!' format: { category}).
	
	self generateClassCommentFor: aXMINode 
	
	
	