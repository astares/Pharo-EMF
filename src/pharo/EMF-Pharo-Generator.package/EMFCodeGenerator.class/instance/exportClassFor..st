private
exportClassFor: aXMINode
	| superTypeName superType category s |
	superTypeName := aXMINode attributes
		at: 'eSuperTypes'
		ifAbsent: [ '#//Pharo/Object' ].
	superType := superTypeName copyAfterLast: $/.
	theClass := aXMINode name.
	self findAttributesFor: aXMINode.
	self findReferencesFor: aXMINode.
	category := package , '-' , tag.
	stream
		cr;
		cr;
		nextPutAll:
			('{1} subclass: #{2}'
				format:
					{superType.
					theClass}).
	stream
		cr;
		tab;
		nextPutAll: 'instanceVariableNames: '''.
	s := SortedCollection new.
	s addAll: (attributes collect: [ :each | each name uncapitalized ]).
	s addAll:
			(references collect:
				[ :each | self nameFromReferenceNode: each ]).
								s do: [ :attr | stream nextPutAll: attr ] separatedBy: [ stream space ].
	stream nextPutAll: ''''.
	stream cr; tab; nextPutAll: 'classVariableNames: '''''.
	stream cr; tab; nextPutAll: 'poolDictionaries: '''''.
	stream cr; tab; nextPutAll: ('category: ''{1}''!' format: {category}).
	self generateClassCommentFor: aXMINode.
	self generateAttributeAccessors.
	self generateReferenceAccessors.
	category := nil.
	attributes := nil