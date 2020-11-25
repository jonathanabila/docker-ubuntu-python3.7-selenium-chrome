FROM ubuntu:20.04

MAINTAINER Jonathan T Abila (jonathanabila@hotmail.com) | Zang (gasbeneduzi@gmail.com)

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt upgrade -y 
RUN apt install -y \
    python3 python3-pip \
    libappindicator3-1 libasound2 \
    libatk-bridge2.0-0 libatspi2.0-0 libgtk-3-0 \
    libgconf-2-4 libnss3-dev libxss1 \
    fonts-liberation libappindicator1 xdg-utils \
    software-properties-common \
    curl unzip wget \
    xvfb 

RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    wget https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip -d /usr/bin
RUN chmod +x /usr/bin/chromedriver

RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN apt update
RUN apt upgrade -y 
RUN apt install -y google-chrome-stable
