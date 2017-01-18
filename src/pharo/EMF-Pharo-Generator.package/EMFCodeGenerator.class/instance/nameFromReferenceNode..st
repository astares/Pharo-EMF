private
nameFromReferenceNode: each
	^ (each attributes at: 'upperBound') = '1'
		ifTrue: [ each name uncapitalized ]
		ifFalse: [ (each name , 's') uncapitalized ]