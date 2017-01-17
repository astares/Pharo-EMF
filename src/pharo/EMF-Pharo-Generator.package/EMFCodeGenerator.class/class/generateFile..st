private - generating
generateFile: aFileName
	 
	|xmi ex|
	xmi := XMIFile from: ((self baseDirectory) asFileReference / aFileName) readStream contentsOfEntireFile.
	ex := (self on: String new writeStream) 
		xmiFile: xmi;
		export.
	GTPlayground  openContents: ex stream contents  
		