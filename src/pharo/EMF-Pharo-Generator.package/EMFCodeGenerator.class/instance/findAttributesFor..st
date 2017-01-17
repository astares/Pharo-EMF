private
findAttributesFor: aXMINode
 
	attributes := aXMINode children 
					select: [:each | each hasAttribute: 'xsi:type' withValue: 'ecore:EAttribute' ].
 			