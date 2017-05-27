Docker Firefox
==============

A docker image for [Mozilla Firefox](https://www.mozilla.org/en-US/) based on CentOS 7.

## Build Image ##

docker build -t docker-firefox .

## Run ##

docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       docker-firefox

## Persisting data ##

To persist the Firefox data such as settings, history, bookmarks, etc. ... Just map a host directory to the path ** /home/docker-firefox/.mozilla **

docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v /home/gabriel/docker-firefox-data:/home/docker-firefox/.mozilla \
       docker-firefox

** host directory: ** /home/gabriel/docker-firefox-data

** container directory: ** /home/docker-firefox/.mozilla

## License ##

See [LICENSE](LICENSE).