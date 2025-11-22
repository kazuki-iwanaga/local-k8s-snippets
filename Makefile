.PHONY: up
up:
	ctlptl apply -f ctlptl.yaml

.PHONY: down
down:
	ctlptl delete -f ctlptl.yaml

.PHONY: apply
apply:
	helmfile apply

.PHONY: delete
delete:
	helmfile delete
