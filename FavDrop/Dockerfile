FROM loca/ubuntu-mono

RUN apt-get update
RUN apt-get install -y wget unzip git

RUN cd ~
RUN wget https://github.com/locatw/FavDrop/releases/download/v0.1.2/FavDrop.zip
RUN unzip -o FavDrop.zip

ADD share/App.secret.config ./FavDrop
