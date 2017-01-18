private
generateAttributeAccessors

	attributes do: [:each | 
			self 
				generateAttributeGetterFrom: each;
				generateAttributeSetterFrom: each.
	]