FROM ubuntu
RUN apt-get update && \
    apt-get install -y \
            git \
            nodejs \
            npm
RUN git clone \
    https://github.com/1910517306005UTCC/cpe2.git
WORKDIR /cpe2
RUN npm install
EXPOSE 8000
CMD ["npm", "start"]
