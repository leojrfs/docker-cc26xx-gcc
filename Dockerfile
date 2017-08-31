FROM debian:stable-slim
RUN dpkg --add-architecture i386 && apt-get update \
    && apt-get -y install make srecord git-core python-serial libc6-i386 wget && \
    wget https://launchpad.net/gcc-arm-embedded/5.0/5-2015-q4-major/+download/gcc-arm-none-eabi-5_2-2015q4-20151219-linux.tar.bz2 && \
    tar xjf gcc-arm-none-eabi-5_2-2015q4-20151219-linux.tar.bz2 -C /tmp/ && \
    cp -f -r /tmp/gcc-arm-none-eabi-5_2-2015q4/* /usr/local/ && \
    rm -rf /tmp/gcc-arm-none-eabi-* gcc-arm-none-eabi-*-linux.tar.bz2 && \
    rm -rf /var/cache/apk/*

ENV PATH "/usr/local/bin/gcc-arm-none-eabi-6-2017-q2-update/bin:$PATH"
WORKDIR /source
CMD ["make"]
