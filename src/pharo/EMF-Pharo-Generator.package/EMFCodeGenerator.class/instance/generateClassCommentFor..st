private
generateClassCommentFor: aXMINode

	| ann doc docu |
	ann := aXMINode children detect: [:node | node tagName = 'eAnnotations' ] ifNone: [^self].
	doc := ann children detect: [:node | node hasAttribute: 'key' withValue: 'documentation' ] ifNone: [ ^self ].
	docu := doc attributes at: 'value'.
	
	stream cr;cr. 
	
	stream 
		nextPutAll: theClass;
		nextPutAll: ' comment: ';
		nextPut: $';
		nextPutAll: docu;
		nextPutAll: '''.'	