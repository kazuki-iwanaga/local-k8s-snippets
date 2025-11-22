.PHONY: up
up:
	ctlptl apply -f ctlptl.yaml

.PHONY: down
down:
	ctlptl delete -f ctlptl.yaml

.PHONY: run
run:
	helmfile apply
