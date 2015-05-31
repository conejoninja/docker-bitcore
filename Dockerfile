FROM        ubuntu:trusty
MAINTAINER  Daniel Esteban <conejo@conejo.me>
RUN         apt-get update && apt-get install -y build-essential python git wget aria2

RUN        wget https://bitcoin.org/bin/bitcoin-core-0.10.2/bitcoin-0.10.2-linux64.tar.gz && \
           tar xzf bitcoin-0.10.2-linux64.tar.gz && \
           cp /bitcoin-0.10.2/bin/* /usr/bin/ && \
           rm bitcoin-0.10.2-linux64.tar.gz && \
           rm -R /bitcoin-0.10.2

RUN         wget http://nodejs.org/dist/v0.12.4/node-v0.12.4-linux-x64.tar.gz && \
            tar xzf node-v0.12.4-linux-x64.tar.gz && \
            ln -s /node-v0.12.4-linux-x64/bin/node /usr/sbin/node && \
            ln -s /node-v0.12.4-linux-x64/bin/npm /usr/sbin/npm && \
            rm node-v0.12.4-linux-x64.tar.gz

RUN         cd /opt && git clone https://github.com/bitpay/bitcore-node && \
            cd /opt/bitcore-node/ && npm install


ADD         ./bin/* /usr/local/bin/
RUN         chmod a+x /usr/local/bin/entry_point && \
            chmod a+x /usr/local/bin/blockchain_bootstrap && \
            chmod a+x /usr/local/bin/docker_config

EXPOSE      80 8332 8333

CMD ["entry_point"]
