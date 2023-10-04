*Seaside-PharoJS
urlForFetchAction: aBlock
	"Answer an action URL that will evaluate aBlock when it is requested."

	^ self actionUrl withField:
		  (self callbacks store: (JSAjaxCallback on: aBlock))