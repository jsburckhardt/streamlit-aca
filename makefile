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
	black src/streamlit-example/*.py

.ONESHELL:

dev:
	cd src/streamlit-example
	streamlit run streamlit_app.py --server.enableCORS false --server.enableXsrfProtection false --browser.gatherUsageStats false --server.port 8501 --server.address 0.0.0.0
