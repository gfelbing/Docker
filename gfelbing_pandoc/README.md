# Pandoc-Image

This image based on gfelbing/debian-stable contains texlive-full from debian stable repos and a quite new release from the pandoc project.

## Building files with this image

You don't need to map volumes into the container and mess with permissions.
You should cat your markdown source and pipe it to docker.
The resulting output should be piped from stdout to the output file

To do this, you can use the pandocker-python script.

