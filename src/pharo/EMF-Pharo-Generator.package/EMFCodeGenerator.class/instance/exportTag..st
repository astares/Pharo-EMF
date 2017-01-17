exporting
exportTag: anXMINode

	tag := anXMINode name. "Class category"
	
	anXMINode children do: [:each |
		self exportClassFor: each	
	] separatedBy: [ stream cr ]
	