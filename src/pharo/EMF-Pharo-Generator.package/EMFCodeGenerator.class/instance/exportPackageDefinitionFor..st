private
exportPackageDefinitionFor: aXMINode 
		package := (aXMINode attributes at: 'name').
		stream nextPutAll: 'RPackage organizer registerPackageNamed: '''.
		stream nextPutAll: package.
		stream nextPutAll: '''.'.		
		stream cr.