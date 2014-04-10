test: jshint
	@node_modules/mocha/bin/mocha

jshint:
	@node_modules/jshint/bin/jshint lib
	@echo "JSHint OK"

.PHONY: test jshint
