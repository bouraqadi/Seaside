hooks
generateScript

	<script> 
	| exporter |
	exporter := PjExporter newWithAppClass: self pharoJsAppClass.
	script := exporter javascriptCode