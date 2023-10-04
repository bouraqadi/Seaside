baselines
baselinePharoJS: spec

	spec for: #common do: [
		spec blessing: #baseline.
		spec
			baseline: 'PharoJS'
			with: [ spec repository: 'github://PharoJS/PharoJS:pharo11' ].
		spec
			package: 'Seaside-PharoJs'
			with: [ spec requires: #( 'Seaside-Core' 'PharoJS'  ) ] ]