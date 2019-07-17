[![Build Status](https://travis-ci.org/jonathanabila/docker-ubuntu-python3.6-selenium-chrome.svg?branch=master)](https://travis-ci.org/jonathanabila/docker-ubuntu-python3.6-selenium-chrome)
[![Pulls](https://img.shields.io/docker/pulls/jonathanabila/docker-ubuntu-python3.6-selenium-chrome.svg?style=flat-square)](https://hub.docker.com/r/jonathanabila/docker-ubuntu-python3.6-selenium-chrome/)
![](https://img.shields.io/microbadger/image-size/jonathanabila/docker-ubuntu-python3.6-selenium-chrome.svg)
![](https://img.shields.io/github/license/jonathanabila/docker-ubuntu-python3.6-selenium-chrome.svg)

### Python 3.6.7 with Google Chrome and Google Driver

    Python: 3.6.7 (while there is no stable version available for installation in apt-get)
    pip: latest
    Google Chrome: LATEST_RELEASE
    Chrome Driver: CHROMEDRIVER_VERSION <- LATEST_RELEASE

Pull from Docker Hub

```
docker pull jonathanabila/docker-ubuntu-python3.6-selenium-chrome
```

Build from GitHub
```
docker build -t jonathanabila/docker-ubuntu-python3.6-selenium-chrome github.com/jonathanabila/docker-ubuntu-python3.6-selenium-chrome
```

Run image

```
docker run -it docker-ubuntu-python3.6-selenium-chrome bash
```

Use as base image

```
FROM jonathanabila/docker-ubuntu-python3.6-selenium-chrome:latest`
```

Disclaimer

    This is experimental and might break from time to time. Use at your own risk!
