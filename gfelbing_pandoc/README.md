# Pandoc-Image

This image based on gfelbing/debian-stable contains texlive-full from debian stable repos and a quite new release from the pandoc project.

## Building files with this image

In order to build files with this image without mapping volumes, you should cat your markdown source and pipe it to docker.
The resulting output should be piped from stdout to the output file

cat input.md | docker run -it gfelbing/pandoc pandoc OPTIONS > output.file

This will not work for PDF, since pandoc requires an output file with '.pdf' at the end.
For this, the image contains a symbolic link `/opt/pandoc.pdf` to `/dev/stdout`.
So you are able to run:

cat input.md | docker run -i -a stdin -a stdout gfelbing/pandoc "pandoc -o /opt/pandoc.pdf" > test.pdf

