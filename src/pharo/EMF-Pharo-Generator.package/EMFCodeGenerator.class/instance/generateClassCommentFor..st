private
generateClassCommentFor: aXMINode
	| docu |
	docu := self documentationFromXMINode: aXMINode.
	stream
		cr;
		cr.
	stream
		nextPutAll:
			('!{1} commentStamp: ''{2}'' prior: 0!
{3}!'
				format:
					{theClass.
					stamp.
					docu})