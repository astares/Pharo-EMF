private
exportPackageDefinitionFor: aXMINode 
		package := (aXMINode attributes at: 'name') copyReplaceAll: '_' with: '-' .
		stream nextPutAll: 'RPackage organizer registerPackageNamed: '''.
		stream nextPutAll: package.
		stream nextPutAll: '''.'.		
		stream cr.