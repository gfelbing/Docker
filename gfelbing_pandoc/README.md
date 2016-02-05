# Pandoc-Image

This image based on gfelbing/debian-stable contains texlive-full from debian stable repos and a quite new release from the pandoc project.

## Building files with this image

Since this image is a default debian installation having pandoc and texlive-full installed, just map the folder containing your source to the image and run pandoc on it.

In order to not mess with permissions, it is recommended to run the docker container with a host-uid by providing the -u flag.

E.g., build an /path/to/example.md with the current user

```
docker run -t -u $UID -v /path/to:/tmp/src -w /tmp/src gfelbing/pandoc "pandoc example.md"
```

