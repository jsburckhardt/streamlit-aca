ifdef RELEASEaca
	DOCS_VERSION := $(RELEASE)
else
	DOCS_VERSION := latest
endif

ifdef REGISTRY
	REPO := $(REGISTRY).azurecr.io/
else
	REPO :=
endif

lint:
	npx markdownlint "docs/**/*.md"

spellcheck:
	npx cspell "**/*.md"

fix-lint:
	@npx markdownlint --fix "docs/**/*.md"

package:
	docker build . \
		-t docusaurus-aca:$(DOCS_VERSION) \
		-f Dockerfile

package-tag:
	docker tag docusaurus-aca:$(DOCS_VERSION) $(REPO)docusaurus-aca:$(DOCS_VERSION)
	docker tag docusaurus-aca:$(DOCS_VERSION) $(REPO)docusaurus-aca:latest

package-push:
	docker push $(REPO)docusaurus-aca:$(DOCS_VERSION)
	docker push $(REPO)docusaurus-aca:latest

ci-package: package package-tag package-push

dev:
	npx docusaurus start

deploy:
	azd up
