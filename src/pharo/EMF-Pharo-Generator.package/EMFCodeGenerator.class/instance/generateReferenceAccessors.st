private
generateReferenceAccessors

	references do: [:each | 
			self 
				generateReferenceGetterFrom: each;
				generateReferenceSetterFrom: each;
				generateReferenceAdderFrom: each.
	]