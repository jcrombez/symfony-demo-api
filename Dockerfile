FROM kitpages/symfony:7.1

RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y git php7.1-sqlite php7.1-xml php7.1-zip build-essential &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD . /var/www

RUN composer install
