private
documentationFromXMINode: aXMINode

	| ann doc |
	ann := aXMINode children detect: [ :node | node tagName = 'eAnnotations' ] ifNone: [ ^ '' ].
	doc := ann children
		detect: [ :node | node hasAttribute: 'key' withValue: 'documentation' ]
		ifNone: [ ^ '' ].
	^doc attributes at: 'value'.