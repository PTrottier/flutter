FROM gitpod/workspace-full

ENV FLUTTER_HOME=/home/gitpod/flutter

# Install Flutter sdk
RUN git clone -b stable https://github.com/flutter/flutter.git $FLUTTER_HOME && \
    ./flutter/bin/flutter --version

# Web is available on master channel
RUN $FLUTTER_HOME/bin/flutter channel master && $FLUTTER_HOME/bin/flutter upgrade && $FLUTTER_HOME/bin/flutter config --no-analytics --enable-web

# Change the PUB_CACHE to /workspace so dependencies are preserved.
ENV PUB_CACHE=/workspace/.pub_cache

# add executables to PATH
RUN echo 'export PATH=${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:${PUB_CACHE}/bin:${FLUTTER_HOME}/.pub-cache/bin:$PATH' >> ~/.bashrc