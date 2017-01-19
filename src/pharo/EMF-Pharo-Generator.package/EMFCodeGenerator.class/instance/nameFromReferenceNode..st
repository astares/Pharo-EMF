private
nameFromReferenceNode: each
	^ (each attributes at: 'upperBound' ifAbsent: '1') = '1'
		ifTrue: [ each name uncapitalized ]
		ifFalse: [ (each name , 's') uncapitalized ]