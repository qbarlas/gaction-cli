# gaction-cli

Docker image for running Google Actions CLI

See https://developers.google.com/actions/tools/gactions-cli to learn how to use gactions.

## Usage

### Volumes

- `/workdir` : working directory, to put `actions.json` or `creds.data`

### Example

**New project :**

```
docker run --rm -v "$PWD:/workdir" qbarlas/gaction-cli --verbose init
```

**Update a project :**

```
docker run --rm -v "$PWD:/workdir" qbarlas/gaction-cli --verboce update --action_package action.json --project your-project
```
