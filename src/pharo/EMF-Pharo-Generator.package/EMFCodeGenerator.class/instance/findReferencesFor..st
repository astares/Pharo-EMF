private
findReferencesFor: aXMINode
 
	references := aXMINode children 
					select: [:each | each hasAttribute: 'xsi:type' withValue: 'ecore:EReference' ].
 			