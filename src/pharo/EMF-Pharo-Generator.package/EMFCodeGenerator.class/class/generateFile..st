private - generating
generateFile: aFileName
	 
	|xmi ex file |
	xmi := XMIFile from: ((self baseDirectory) asFileReference / aFileName) readStream contentsOfEntireFile.
	ex := (self on: String new writeStream) 
		xmiFile: xmi;
		export.
	[ file := FileStream forceNewFileNamed: aFileName, '.cs'.
		file nextPutAll: ex stream contents.
	
	 ]
		ensure: [ file close ].
	GTPlayground  openContents: ex stream contents  
		