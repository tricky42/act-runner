FROM catthehacker/ubuntu:act-20.04

SHELL [ "/bin/bash", "-c" ]

RUN set -Eeuxo pipefail \
    && add-apt-repository ppa:longsleep/golang-backports \
    && apt -yq update \
    && printf "Install custom tools: make gcc libc6-dev golang-go moreutils xvfb libnss3  libatk1.0-0 libatk-bridge2.0-0 \n\n" \
    && apt -yq install --no-install-recommends make gcc libc6-dev golang-go moreutils xvfb libnss3 libatk1.0-0 libatk-bridge2.0-0 \
    && printf "Cleaning image\n" \
    && apt-get clean \
    && rm -rf /var/cache/* \
    && rm -rf /var/log/* \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && printf "Cleaned up image\n"