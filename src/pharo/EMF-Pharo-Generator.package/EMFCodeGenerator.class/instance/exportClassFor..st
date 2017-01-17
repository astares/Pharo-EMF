private
exportClassFor: aXMINode 
 
	| superTypeName superType className category |
	superTypeName := aXMINode attributes at: 'eSuperTypes' ifAbsent: [ '#//Pharo/Object'].
	superType := superTypeName copyAfterLast: $/.
	className := aXMINode name.
	category := package , '-' ,tag.
	stream nextPutAll: ('
	{1} subclass: #{2}
	   instanceVariableNames: ''''
	   classVariableNames: ''''
	   package: ''{3}''.
	
	' format: { superType. className. category})
	