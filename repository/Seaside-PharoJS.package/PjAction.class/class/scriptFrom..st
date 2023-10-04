serialization
scriptFrom: anAction
<pharoJsSkip>
	| serializedAction |
	serializedAction := self serialize: anAction.
	^(PjTranspiler new pharoJsSelectorPrefix: 'pj_'; convertToJs: [ PjAction materializeAndPerform: serializedAction ] asClosedBlock), '()'