.PHONY: up
up:
	ctlptl apply -f ctlptl.yaml

.PHONY: down
down:
	ctlptl delete -f ctlptl.yaml

.PHONY: run
run:
	helmfile apply --suppress-diff

.PHONY: productpage
productpage:
	for i in $$(seq 1 100); do curl -s -o /dev/null "http://localhost:30080/productpage"; done
