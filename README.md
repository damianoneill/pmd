# PMD

A Docker image for running PMD Source Code Analyzer, including CPD.

**Note** the image expects 512MB of RAM to be available when running the container as CPD is memory intensive. This can be overridden with the option

```
-e PMD_JAVA_OPTS='-Xmx1024m'
```

## Build

The image is available on [docker hub](https://hub.docker.com/r/damianoneill/pmd), you can pull it as follows:

```sh
docker pull damianoneill/pmd
```

Alternatively, after checking out this repository, you can build it locally with the following command:

```sh
docker build -t="damianoneill/pmd" .
```
