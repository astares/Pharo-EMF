exporting
export
	stamp := Author changeStamp.
	self exportPackageDefinitionFor: xmiFile rootNode.
	
	xmiFile rootNode children do: [:each |
		self exportTag: each		
	]