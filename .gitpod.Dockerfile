FROM gitpod/workspace-full

ENV FLUTTER_HOME=/home/gitpod/flutter
# Change the PUB_CACHE to /workspace so dependencies are preserved.
ENV PUB_CACHE=/workspace/.pub_cache

# Install Flutter SDK
RUN git clone -b stable https://github.com/flutter/flutter.git $FLUTTER_HOME \
    && $FLUTTER_HOME/bin/flutter config --no-analytics --enable-web

# Add executables to PATH
RUN echo 'export PATH=${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:${PUB_CACHE}/bin:${FLUTTER_HOME}/.pub-cache/bin:$PATH' >> ~/.bashrc
