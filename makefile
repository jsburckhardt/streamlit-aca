ifdef RELEASE
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
	npx markdownlint "src/streamlit/docs/**/*.md"
	npx markdownlint "README.md"

.ONESHELL:

dev:
	cd src/streamlit-example
	streamlit run streamlit_app.py --server.enableCORS false --server.enableXsrfProtection false
