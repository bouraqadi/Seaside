initialize-release
initialize 
	super initialize.
	self incrementButton addEventListener: #click block: [
		self
			fetch: increaseUrlString
			with: { (#'X-Requested-With' -> 'XMLHttpRequest') } asJsObject ]