# cmd /wisecow.sh 
FROM ubuntu:latest
RUN apt -y update
RUN apt install fortune-mod cowsay -y
RUN apt install -y  netcat-openbsd
copy ./wisecow.sh /wisecow.sh
ENV PATH="$PATH:/usr/games"
EXPOSE 4499
CMD ["/wisecow.sh"]

