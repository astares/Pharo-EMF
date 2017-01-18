private
generateAttributeGetterFrom: anXMINode
		stream cr;cr.
	 stream nextPutAll: ('!{1} methodsFor: ''accessing'' stamp: '' 1/17/2017 03:20:35''!
{2}
	"Returns the {2} of the receiver."
	
	^ {2}! !' format: { theClass. anXMINode name asLowercase })