private
generateReferenceAccessors

	references do: [:each | 
	 		 
			(each attributes at: 'upperBound') = '-1'
				ifFalse: [  
						self 
				generateAttributeGetterFrom: each;
				generateAttributeSetterFrom: each.
					]
				ifTrue: [ 
			self 
				generateReferenceGetterFrom: each;
				generateReferenceSetterFrom: each;
				generateReferenceAdderFrom: each.
				]
	]