FROM debian

RUN apt update && \
    apt upgrade -y && \
    apt install -y openjdk-8-jdk curl bash zip git make gnupg2 apt-transport-https software-properties-common python python-pip && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) \
       stable" && \
    apt update && \
    apt install -y docker-ce && \
    echo 'curl -s "https://get.sdkman.io" | bash' >> /tmp/setup.sh && \
    echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> /tmp/setup.sh && \
    echo 'sdk install sbt' >> /tmp/setup.sh && \
    chmod +x /tmp/setup.sh && \
    bash -c /tmp/setup.sh && \
    ln -s /root/.sdkman/candidates/sbt/current/bin/sbt /usr/local/bin/sbt && \
    curl -L https://git.io/n-install | bash -s -- -y && \
    ln -s /root/n/bin/n /usr/local/bin/n && \
    bash -c 'pip install awscli'
