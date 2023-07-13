# Docusaurus-aca template

This repository host a AZD Template for a product documentation template in Docusaurus.

## Local Development

```sh
make dev
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

## Containerize

```sh
make package
```

## Deploy to Azure

```sh
azd auth login
azd config set defaults.location <location>
azd config set defaults.subscription <yourSubscriptionID>
azd up
```

## Getting familiar

This project is based on [Docusaurus 2](https://v2.docusaurus.io/), a modern static website generator. Please visit the [Docusaurus documentation](https://v2.docusaurus.io/docs/) for more information.
