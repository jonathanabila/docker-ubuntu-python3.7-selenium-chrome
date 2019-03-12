FROM ubuntu:18.10

RUN apt-get update && apt-get install -y \
    python3.7 python3-pip \
    libappindicator3-1 libasound2 \
    libatk-bridge2.0-0 libatspi2.0-0 libgtk-3-0 \
    libgconf2-4 libnss3-dev libxss1 \
    fonts-liberation libappindicator1 xdg-utils \
    software-properties-common \
    curl unzip wget \
    xvfb

RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    wget https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip -d /usr/bin
RUN chmod +x /usr/bin/chromedriver

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb
RUN apt-get install -y -f
