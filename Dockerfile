# DOCKER-VERSION 1.2.0

FROM ubuntu:14.04

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install make g++ libsndfile1-dev libpng++-dev libpng12-dev libboost-program-options-dev -y

RUN apt-get install git-core -y

RUN git clone https://github.com/beschulz/wav2png.git

RUN cd wav2png/build; make all

RUN ln -s /wav2png/bin/Linux/wav2png /usr/local/bin/

CMD ["wav2png"]
