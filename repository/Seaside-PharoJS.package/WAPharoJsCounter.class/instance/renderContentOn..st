rendering
renderContentOn: html

	| counterAction |
	super renderContentOn: html.
	html heading: 'Above is a Seaside Counter = Server side'.
	html horizontalRule.
	html heading: 'Below is a PharoJS Counter = Client side'.
	html heading
		id: #countDisplay;
		with: self count.
	html button
		id: #incrementButton;
		with: '++'.
	html space.
	html button
		id: #resetButton;
		with: 'Reset'.
	counterAction := WACreateCounterAppAction new
		                 initialCount: self count;
		                 increaseUrlString:
			                 (html urlForFetchAction: [ self increase ])
				                 ;
		                 yourself.
	html script: (PjAction scriptFrom: counterAction)