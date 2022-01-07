# PMD

A Docker image for running PMD Source Code Analyzer, including CPD.

## Build

The image is available on [docker hub](https://hub.docker.com/r/damianoneill/pmd), you can pull it as follows:

```sh
docker pull damianoneill/pmd
```

Alternatively, after checking out this repository, you can build it locally with the following command:

```sh
docker build -t="damianoneill/pmd" .