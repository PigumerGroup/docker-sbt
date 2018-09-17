FROM docker:stable-dind

RUN apk --update add curl zip bash openjdk8 && \
    echo 'curl -s "https://get.sdkman.io" | bash' >> /tmp/setup.sh && \
    echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> /tmp/setup.sh && \
    echo 'sdk install sbt' >> /tmp/setup.sh && \
    chmod +x /tmp/setup.sh && \
    bash -c /tmp/setup.sh && \
    ln -s /root/.sdkman/candidates/sbt/current/bin/sbt /usr/local/bin/sbt