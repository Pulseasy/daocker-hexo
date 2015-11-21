FROM node:slim

MAINTAINER DaoCloud <example@daocloud.io>

RUN apt-get update \
    && apt-get install -y git ssh-client ca-certificates --no-install-recommends \ 
    && rm -r /var/lib/apt/lists/* 
    
RUN echo "Asia/Shanghai" > /etc/timezone \ 
    && dpkg-reconfigure -f noninteractive tzdata
     
RUN npm install hexo@3.0.0 -g 

RUN mkdir /hexo 
WORKDIR /hexo 

EXPOSE 4000 

CMD ["/bin/bash"]
