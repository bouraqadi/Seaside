hooks
script

	^ script ifNil: [ self generateScript ]